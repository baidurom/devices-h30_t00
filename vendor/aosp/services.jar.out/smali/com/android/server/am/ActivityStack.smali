.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$myThread;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static DEBUG_ADD_REMOVE:Z = false

.field static DEBUG_CLEANUP:Z = false

.field static DEBUG_CONFIGURATION:Z = false

.field static DEBUG_PAUSE:Z = false

.field static DEBUG_PROCESSES:Z = false

.field static DEBUG_RESULTS:Z = false

.field static DEBUG_SAVED_STATE:Z = false

.field static DEBUG_STATES:Z = false

.field static DEBUG_SWITCH:Z = false

.field static DEBUG_TASKS:Z = false

.field static DEBUG_THERMAL:Z = false

.field static DEBUG_TRANSITION:Z = false

.field static DEBUG_USER_LEAVING:Z = false

.field static DEBUG_VISBILITY:Z = false

.field static final DESTROY_ACTIVITIES_MSG:I = 0x6d

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x69

.field private static final FINISH_AFTER_PAUSE:I = 0x1

.field private static final FINISH_AFTER_VISIBLE:I = 0x2

.field private static final FINISH_IMMEDIATELY:I = 0x0

.field static final HALT_RESUMING_TIMEOUT_MSG:I = 0x6e

.field static final IDLE_NOW_MSG:I = 0x67

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x66

.field static final LAUNCH_TICK:I = 0x7d0

.field static final LAUNCH_TICK_MSG:I = 0x6b

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final MAX_TIMEOUT_HALT_ACTIVITY_RESUMING:I = 0xbb8

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RESTORE_RESUMING_MSG:I = 0x6f

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x6a

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x64

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x6c

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_TOKENS:Z

.field static localLOGV:Z

.field static final mIsHwNaviBar:Z


# instance fields
.field mAnimationOptions:Landroid/os/Bundle;

.field mAnimationPrev:Lcom/android/server/am/ActivityRecord;

.field mConfigWillChange:Z

.field final mContext:Landroid/content/Context;

.field mCurActivityPkName:Ljava/lang/String;

.field private mCurrentUser:I

.field mDismissKeyguardOnNextActivity:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mHaltActivity:Z

.field mHaltActivityLock:Ljava/lang/Object;

.field final mHandler:Landroid/os/Handler;

.field final mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mInitialStartTime:J

.field private mIsMultiLauncher:Z

.field private mIsPerfBoostEnable:Z

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mMainStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field mRuningBackground:Ljava/lang/Boolean;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field mStackListener:Lcom/android/server/am/ActivityStackListener;

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserStartedState;",
            ">;"
        }
    .end annotation
.end field

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mThumbnailHeight:I

.field mThumbnailWidth:I

.field mUserLeaving:Z

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->localLOGV:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->localLOGV:Z

    .line 106
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_SWITCH:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    .line 107
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_PAUSE:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    .line 108
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_VISBILITY:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    .line 109
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_USER_LEAVING:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_USER_LEAVING:Z

    .line 110
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_TRANSITION:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_TRANSITION:Z

    .line 111
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_RESULTS:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_RESULTS:Z

    .line 112
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    .line 113
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_TASKS:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    .line 114
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_THERMAL:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_THERMAL:Z

    .line 116
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_CLEANUP:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_CLEANUP:Z

    .line 117
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_PROCESSES:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_PROCESSES:Z

    .line 119
    sput-boolean v1, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    .line 120
    sput-boolean v1, Lcom/android/server/am/ActivityStack;->DEBUG_ADD_REMOVE:Z

    .line 121
    sput-boolean v1, Lcom/android/server/am/ActivityStack;->DEBUG_SAVED_STATE:Z

    .line 124
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->VALIDATE_TOKENS:Z

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->VALIDATE_TOKENS:Z

    .line 167
    const-string v0, "ro.config.hw_navigationbar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->mIsHwNaviBar:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Z)V
    .locals 6
    .parameter "service"
    .parameter "context"
    .parameter "mainStack"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    .line 275
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 282
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 287
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 289
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mCurActivityPkName:Ljava/lang/String;

    .line 290
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mRuningBackground:Ljava/lang/Boolean;

    .line 297
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 313
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 315
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 320
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 325
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 327
    iput v4, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 328
    iput v4, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 332
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsPerfBoostEnable:Z

    .line 333
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiLauncher:Z

    .line 363
    new-instance v1, Lcom/android/server/am/ActivityStack$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityStack$1;-><init>(Lcom/android/server/am/ActivityStack;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 5476
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mHaltActivity:Z

    .line 5477
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHaltActivityLock:Ljava/lang/Object;

    .line 493
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 494
    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    .line 495
    iput-boolean p3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    .line 497
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mCurActivityPkName:Ljava/lang/String;

    .line 499
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 501
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 502
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 503
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 504
    return-void
.end method

.method private checkIfBlockResumeTop(Lcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .parameter "r"

    .prologue
    const/4 v1, 0x0

    .line 5543
    if-nez p1, :cond_1

    .line 5576
    :cond_0
    :goto_0
    return v1

    .line 5547
    :cond_1
    const/4 v0, 0x0

    .line 5549
    .local v0, preferConfig:I
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 5565
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5566
    const/4 v0, 0x2

    .line 5572
    :goto_1
    if-eqz v0, :cond_0

    .line 5573
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 5553
    :pswitch_1
    const/4 v0, 0x1

    .line 5554
    goto :goto_1

    .line 5559
    :pswitch_2
    const/4 v0, 0x2

    .line 5560
    goto :goto_1

    .line 5568
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 5549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final completePauseLocked()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1440
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1441
    .local v3, prev:Lcom/android/server/am/ActivityRecord;
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_0

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Complete pause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_0
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mRuningBackground:Ljava/lang/Boolean;

    .line 1445
    if-eqz v3, :cond_3

    .line 1446
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_8

    .line 1447
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_1

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing finish of activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_1
    const/4 v6, 0x2

    invoke-direct {p0, v3, v6, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1450
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mRuningBackground:Ljava/lang/Boolean;

    .line 1491
    :cond_2
    :goto_0
    iput-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1494
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v6

    if-nez v6, :cond_12

    .line 1498
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1512
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 1515
    new-instance v6, Lcom/android/server/am/ActivityStack$myThread;

    invoke-direct {v6, p0, v3}, Lcom/android/server/am/ActivityStack$myThread;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack$myThread;->start()V

    .line 1519
    :cond_5
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_7

    iget-wide v6, v3, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v6, v6, v12

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1521
    const-wide/16 v1, 0x0

    .line 1522
    .local v1, diff:J
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v7

    .line 1523
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v8}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v8

    iget-wide v10, v3, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v1, v8, v10

    .line 1525
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    cmp-long v6, v1, v12

    if-lez v6, :cond_7

    .line 1527
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1528
    .local v0, bsi:Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 1529
    :try_start_1
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    .line 1532
    .local v4, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_6

    .line 1533
    invoke-virtual {v4, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1535
    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1538
    .end local v0           #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1           #diff:J
    .end local v4           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_7
    iput-wide v12, v3, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1539
    return-void

    .line 1452
    :cond_8
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_10

    .line 1453
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_9

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enqueueing pending stop: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_9
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v6, :cond_b

    .line 1455
    iput-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1456
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1457
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v6, :cond_a

    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_b

    :cond_a
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Complete pause, no longer waiting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_b
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v6, :cond_d

    .line 1466
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_c

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying after pause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_c
    const-string v6, "pause-config"

    invoke-virtual {p0, v3, v11, v9, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    .line 1469
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mRuningBackground:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1472
    :cond_d
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_f

    .line 1477
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_e

    const-string v6, "ActivityManager"

    const-string v7, "To many pending stops, forcing idle"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    .line 1480
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v6, :cond_2

    .line 1481
    const-string v6, "ActivityManager"

    const-string v7, "ACT-IDLE_NOW_MSG from completePauseLocked for mStoppingActivities.size() > 3"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1484
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto/16 :goto_0

    .line 1488
    :cond_10
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v6, :cond_11

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App died during pause, not stopping: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1500
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1501
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1502
    .local v5, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_13

    if-eqz v3, :cond_4

    if-eq v5, v3, :cond_4

    .line 1508
    :cond_13
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_1

    .line 1525
    .end local v5           #top:Lcom/android/server/am/ActivityRecord;
    .restart local v1       #diff:J
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1535
    .restart local v0       #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method private final completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .parameter "next"

    .prologue
    const-wide/16 v6, 0x40

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1547
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1548
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1549
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1551
    const-string v1, "amCompleteResume"

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1554
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1555
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1556
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1568
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1572
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_1

    .line 1573
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1575
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1576
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1577
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1578
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1583
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    .line 1584
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 1585
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1586
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1592
    return-void

    .line 1586
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1588
    :cond_2
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_0
.end method

.method private final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I
    .locals 4
    .parameter "r"
    .parameter "task"

    .prologue
    .line 2851
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2852
    .local v1, i:I
    :cond_0
    if-lez v1, :cond_1

    .line 2853
    add-int/lit8 v1, v1, -0x1

    .line 2854
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 2855
    .local v0, candidate:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    .line 2858
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p2, :cond_2

    .line 2866
    .end local v0           #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 2861
    .restart local v0       #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 2862
    goto :goto_0
.end method

.method private findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 632
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 633
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 634
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 638
    .local v4, userId:I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 639
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 640
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 641
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_1

    .line 642
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v4, :cond_1

    .line 651
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v3

    .line 639
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 651
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 585
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 586
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 587
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x0

    .line 592
    .local v2, cp:Lcom/android/server/am/TaskRecord;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 593
    .local v5, userId:I
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 594
    .local v0, N:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_5

    .line 595
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 596
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_4

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v6, v2, :cond_4

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, v5, :cond_4

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 598
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 602
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 603
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 623
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    return-object v4

    .line 607
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 613
    :cond_3
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 594
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 623
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .parameter "r"
    .parameter "index"
    .parameter "mode"
    .parameter "oomAdj"

    .prologue
    const/4 v2, 0x0

    .line 4437
    const/4 v3, 0x2

    if-ne p3, v3, :cond_4

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_4

    .line 4438
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4439
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4440
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_3

    .line 4444
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    .line 4446
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v2, :cond_0

    .line 4447
    const-string v2, "ActivityManager"

    const-string v3, "ACT-IDLE_NOW_MSG from finishCurrentActivityLocked for mStoppingActivities.size() > 3"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4453
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to STOPPING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (finish requested)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4455
    :cond_1
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4456
    if-eqz p4, :cond_2

    .line 4457
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4498
    .end local p1
    :cond_2
    :goto_1
    return-object p1

    .line 4450
    .restart local p1
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto :goto_0

    .line 4463
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4464
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4465
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4466
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_5

    .line 4467
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4469
    :cond_5
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4470
    .local v1, prevState:Lcom/android/server/am/ActivityStack$ActivityState;
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v3, :cond_6

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to FINISHING: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4471
    :cond_6
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4474
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_7

    .line 4475
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    :cond_7
    if-eqz p3, :cond_8

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v3, :cond_8

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v3, :cond_a

    .line 4484
    :cond_8
    const/4 v3, 0x1

    const-string v4, "finish-imm"

    invoke-virtual {p0, p1, v3, p4, v4}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v0

    .line 4486
    .local v0, activityRemoved:Z
    if-eqz v0, :cond_9

    .line 4487
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4489
    :cond_9
    if-eqz v0, :cond_2

    move-object p1, v2

    goto :goto_1

    .line 4494
    .end local v0           #activityRemoved:Z
    :cond_a
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->localLOGV:Z

    if-eqz v3, :cond_b

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enqueueing pending finish: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4495
    :cond_b
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4496
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_1
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .parameter "r"
    .parameter "mode"
    .parameter "oomAdj"

    .prologue
    .line 4424
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 4425
    .local v0, index:I
    if-gez v0, :cond_0

    .line 4426
    const/4 v1, 0x0

    .line 4429
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_0
.end method

.method private final finishTaskMoveLocked(I)V
    .locals 1
    .parameter "task"

    .prologue
    .line 5036
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5037
    return-void
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 5580
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .parameter "tag"
    .parameter "r"
    .parameter "task"

    .prologue
    .line 5256
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5261
    return-void
.end method

.method private final moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .parameter "where"

    .prologue
    .line 2874
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2875
    .local v1, newTop:Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2876
    .local v3, top:I
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 2877
    .local v2, oldTop:Lcom/android/server/am/ActivityRecord;
    sget-boolean v4, Lcom/android/server/am/ActivityStack;->DEBUG_ADD_REMOVE:Z

    if-eqz v4, :cond_0

    .line 2878
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "here"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2879
    .local v0, here:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2880
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing and adding activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to stack at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2883
    .end local v0           #here:Ljava/lang/RuntimeException;
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2885
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v4, :cond_1

    .line 2886
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 2889
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2890
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2891
    return-object v1
.end method

.method private okToShow(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 507
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final performClearTaskAtIndexLocked(II)V
    .locals 7
    .parameter "taskId"
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 2798
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 2799
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2800
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_2

    .line 2813
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void

    .line 2804
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 2805
    add-int/lit8 p2, p2, 0x1

    .line 2806
    goto :goto_0

    .line 2808
    :cond_3
    const/4 v4, 0x0

    const-string v5, "clear"

    move-object v0, p0

    move v2, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2810
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private final performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 12
    .parameter "taskId"
    .parameter "newR"
    .parameter "launchFlags"

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2730
    .local v2, i:I
    :cond_0
    if-lez v2, :cond_1

    .line 2731
    add-int/lit8 v2, v2, -0x1

    .line 2732
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2733
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_0

    .line 2734
    add-int/lit8 v2, v2, 0x1

    .line 2740
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v2, :cond_9

    .line 2741
    add-int/lit8 v2, v2, -0x1

    .line 2742
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2743
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 2746
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_3

    .line 2747
    const/4 v11, 0x0

    .line 2790
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-object v11

    .line 2749
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2751
    move-object v11, v1

    .line 2752
    .local v11, ret:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5

    .line 2753
    add-int/lit8 v2, v2, 0x1

    .line 2754
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2755
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_7

    .line 2774
    :cond_5
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_2

    const/high16 v0, 0x2000

    and-int/2addr v0, p3

    if-nez v0, :cond_2

    .line 2776
    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2

    .line 2777
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v5

    .line 2778
    .local v5, index:I
    if-ltz v5, :cond_6

    .line 2779
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "clear"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2782
    :cond_6
    const/4 v11, 0x0

    goto :goto_0

    .line 2758
    .end local v5           #index:I
    :cond_7
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_4

    .line 2761
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v10

    .line 2762
    .local v10, opts:Landroid/app/ActivityOptions;
    if-eqz v10, :cond_8

    .line 2763
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2765
    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "clear"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2767
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2790
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    .end local v10           #opts:Landroid/app/ActivityOptions;
    .end local v11           #ret:Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private final performClearTaskLocked(I)V
    .locals 3
    .parameter "taskId"

    .prologue
    .line 2819
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2822
    .local v0, i:I
    :cond_0
    if-lez v0, :cond_1

    .line 2823
    add-int/lit8 v0, v0, -0x1

    .line 2824
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2825
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .line 2826
    add-int/lit8 v0, v0, 0x1

    .line 2832
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v0, :cond_2

    .line 2833
    add-int/lit8 v0, v0, -0x1

    .line 2834
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2835
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 2838
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p1, :cond_1

    .line 2840
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 2844
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void
.end method

.method private readFileInt(Ljava/lang/String;)I
    .locals 9
    .parameter "path"

    .prologue
    .line 981
    const/4 v3, 0x0

    .line 982
    .local v3, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 984
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    .end local v3           #fr:Ljava/io/FileReader;
    .local v4, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 986
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v5

    .line 992
    .local v5, i:I
    if-eqz v1, :cond_0

    .line 994
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 995
    if-eqz v4, :cond_0

    .line 996
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_0
    :goto_0
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 999
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v5           #i:I
    .restart local v3       #fr:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return v5

    .line 988
    :catch_0
    move-exception v2

    .line 989
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 990
    const/4 v5, 0x0

    .line 992
    if-eqz v0, :cond_1

    .line 994
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 995
    if-eqz v3, :cond_1

    .line 996
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 998
    :catch_1
    move-exception v6

    goto :goto_1

    .line 992
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_2

    .line 994
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 995
    if-eqz v3, :cond_2

    .line 996
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 999
    :cond_2
    :goto_4
    throw v6

    .line 998
    :catch_2
    move-exception v7

    goto :goto_4

    .line 992
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_3

    .line 988
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 998
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v5       #i:I
    :catch_5
    move-exception v6

    goto :goto_0
.end method

.method private final relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 10
    .parameter "r"
    .parameter "changes"
    .parameter "andResume"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 5405
    const/4 v2, 0x0

    .line 5406
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 5407
    .local v3, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_0

    .line 5408
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 5409
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 5411
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Relaunching: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " with results="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " newIntents="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " andResume="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5415
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v0, :cond_2

    .line 5416
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACT-Relaunching: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " with results="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " newIntents="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " andResume="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5420
    :cond_2
    if-eqz p3, :cond_8

    const/16 v0, 0x7543

    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    const/4 v4, 0x2

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v4, 0x3

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5424
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v5}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 5427
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v0, :cond_4

    :cond_3
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_9

    const-string v0, "Relaunching to RESUMED "

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5430
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 5431
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_5

    move v5, v8

    :cond_5
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5440
    :cond_6
    :goto_2
    if-eqz p3, :cond_b

    .line 5441
    iput-object v9, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 5442
    iput-object v9, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 5443
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_7

    .line 5444
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5446
    :cond_7
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5452
    :goto_3
    return v8

    .line 5420
    :cond_8
    const/16 v0, 0x7544

    goto :goto_0

    .line 5427
    :cond_9
    :try_start_1
    const-string v0, "Relaunching to PAUSED "
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5436
    :catch_0
    move-exception v7

    .line 5437
    .local v7, e:Landroid/os/RemoteException;
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v0, :cond_6

    :cond_a
    const-string v0, "ActivityManager"

    const-string v1, "Relaunch failed"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5448
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5449
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_3
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 5
    .parameter "list"
    .parameter "app"
    .parameter "listName"

    .prologue
    .line 4792
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4793
    .local v0, i:I
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_CLEANUP:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4796
    :cond_0
    :goto_0
    if-lez v0, :cond_3

    .line 4797
    add-int/lit8 v0, v0, -0x1

    .line 4798
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4799
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_CLEANUP:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    .line 4801
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_CLEANUP:Z

    if-eqz v2, :cond_2

    const-string v2, "ActivityManager"

    const-string v3, "---> REMOVING this entry!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4803
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 4806
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 4559
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4560
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4561
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4562
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4563
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4564
    return-void
.end method

.method private final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 31
    .parameter "taskTop"
    .parameter "newActivity"

    .prologue
    .line 2370
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/16 v20, 0x1

    .line 2380
    .local v20, forceReset:Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v28, v0

    .line 2385
    .local v28, task:Lcom/android/server/am/TaskRecord;
    const/16 v26, 0x0

    .line 2386
    .local v26, target:Lcom/android/server/am/ActivityRecord;
    const/16 v27, 0x0

    .line 2387
    .local v27, targetI:I
    const/16 v29, -0x1

    .line 2388
    .local v29, taskTopI:I
    const/16 v25, -0x1

    .line 2389
    .local v25, replyChainEnd:I
    const/16 v24, -0x1

    .line 2390
    .local v24, lastReparentPos:I
    const/16 v30, 0x0

    .line 2391
    .local v30, topOptions:Landroid/app/ActivityOptions;
    const/4 v14, 0x1

    .line 2392
    .local v14, canMoveOptions:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .local v23, i:I
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v23

    if-lt v0, v2, :cond_3

    .line 2393
    if-ltz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v13, v2

    .line 2395
    .local v13, below:Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-eqz v13, :cond_2

    iget-boolean v2, v13, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2

    .line 2392
    :goto_3
    add-int/lit8 v23, v23, -0x1

    goto :goto_1

    .line 2370
    .end local v13           #below:Lcom/android/server/am/ActivityRecord;
    .end local v14           #canMoveOptions:Z
    .end local v20           #forceReset:Z
    .end local v23           #i:I
    .end local v24           #lastReparentPos:I
    .end local v25           #replyChainEnd:I
    .end local v26           #target:Lcom/android/server/am/ActivityRecord;
    .end local v27           #targetI:I
    .end local v28           #task:Lcom/android/server/am/TaskRecord;
    .end local v29           #taskTopI:I
    .end local v30           #topOptions:Landroid/app/ActivityOptions;
    :cond_0
    const/16 v20, 0x0

    goto :goto_0

    .line 2393
    .restart local v14       #canMoveOptions:Z
    .restart local v20       #forceReset:Z
    .restart local v23       #i:I
    .restart local v24       #lastReparentPos:I
    .restart local v25       #replyChainEnd:I
    .restart local v26       #target:Lcom/android/server/am/ActivityRecord;
    .restart local v27       #targetI:I
    .restart local v28       #task:Lcom/android/server/am/TaskRecord;
    .restart local v29       #taskTopI:I
    .restart local v30       #topOptions:Landroid/app/ActivityOptions;
    :cond_1
    const/4 v13, 0x0

    goto :goto_2

    .line 2399
    .restart local v13       #below:Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-eqz v13, :cond_5

    iget v2, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v2, v5, :cond_5

    .line 2701
    .end local v13           #below:Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-eqz v30, :cond_4

    .line 2704
    if-eqz p1, :cond_3f

    .line 2705
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2711
    :cond_4
    :goto_4
    return-object p1

    .line 2402
    .restart local v13       #below:Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-nez v26, :cond_6

    .line 2403
    move-object/from16 v26, v13

    .line 2404
    move/from16 v27, v23

    .line 2408
    const/16 v25, -0x1

    .line 2409
    goto :goto_3

    .line 2412
    :cond_6
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v19, v0

    .line 2414
    .local v19, flags:I
    and-int/lit8 v2, v19, 0x2

    if-eqz v2, :cond_9

    const/16 v18, 0x1

    .line 2416
    .local v18, finishOnTaskLaunch:Z
    :goto_5
    and-int/lit8 v2, v19, 0x40

    if-eqz v2, :cond_a

    const/4 v12, 0x1

    .line 2419
    .local v12, allowTaskReparenting:Z
    :goto_6
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v28

    if-ne v2, v0, :cond_29

    .line 2425
    if-gez v29, :cond_7

    .line 2426
    move/from16 v29, v27

    .line 2428
    :cond_7
    if-eqz v13, :cond_28

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v28

    if-ne v2, v0, :cond_28

    .line 2429
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v5, 0x8

    and-int/2addr v2, v5

    if-eqz v2, :cond_b

    const/4 v15, 0x1

    .line 2432
    .local v15, clearWhenTaskReset:Z
    :goto_7
    if-nez v18, :cond_c

    if-nez v15, :cond_c

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_c

    .line 2439
    if-gez v25, :cond_8

    .line 2440
    move/from16 v25, v27

    .line 2697
    .end local v15           #clearWhenTaskReset:Z
    :cond_8
    :goto_8
    move-object/from16 v26, v13

    .line 2698
    move/from16 v27, v23

    goto :goto_3

    .line 2414
    .end local v12           #allowTaskReparenting:Z
    .end local v18           #finishOnTaskLaunch:Z
    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    .line 2416
    .restart local v18       #finishOnTaskLaunch:Z
    :cond_a
    const/4 v12, 0x0

    goto :goto_6

    .line 2429
    .restart local v12       #allowTaskReparenting:Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_7

    .line 2442
    .restart local v15       #clearWhenTaskReset:Z
    :cond_c
    if-nez v18, :cond_1b

    if-nez v15, :cond_1b

    if-eqz v12, :cond_1b

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_1b

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2452
    .local v3, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_f

    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2457
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2458
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v2, :cond_d

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start pushing activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out to bottom task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2472
    if-gez v25, :cond_e

    .line 2473
    move/from16 v25, v27

    .line 2475
    :cond_e
    const/16 v17, 0x0

    .line 2476
    .local v17, dstPos:I
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    move-object/from16 v16, v0

    .line 2477
    .local v16, curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    if-nez v14, :cond_11

    const/16 v21, 0x1

    .line 2478
    .local v21, gotOptions:Z
    :goto_a
    move/from16 v4, v27

    .local v4, srcPos:I
    :goto_b
    move/from16 v0, v25

    if-gt v4, v0, :cond_18

    .line 2479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2480
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_12

    .line 2478
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 2461
    .end local v4           #srcPos:I
    .end local v16           #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .end local v17           #dstPos:I
    .end local v21           #gotOptions:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v2, :cond_10

    .line 2463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2465
    :cond_10
    new-instance v2, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    invoke-direct {v2, v5, v6, v8}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2467
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v5, v2, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 2468
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v2, :cond_d

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start pushing activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out to new task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2477
    .restart local v16       #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .restart local v17       #dstPos:I
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 2483
    .restart local v4       #srcPos:I
    .restart local v21       #gotOptions:Z
    :cond_12
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v2, :cond_13

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pushing next activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out to target\'s task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    :cond_13
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v0, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2486
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    move-object/from16 v16, v0

    .line 2487
    const/4 v14, 0x0

    .line 2488
    if-nez v21, :cond_14

    if-nez v30, :cond_14

    .line 2489
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v30

    .line 2490
    if-eqz v30, :cond_14

    .line 2491
    const/16 v21, 0x1

    .line 2494
    :cond_14
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_15

    .line 2495
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v2, "here"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2496
    .local v22, here:Ljava/lang/RuntimeException;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2497
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing and adding activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to stack at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2500
    .end local v22           #here:Ljava/lang/RuntimeException;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v2, :cond_16

    .line 2504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 2507
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v17

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 2508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2509
    add-int/lit8 v17, v17, 0x1

    .line 2510
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->VALIDATE_TOKENS:Z

    if-eqz v2, :cond_17

    .line 2511
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->validateAppTokensLocked()V

    .line 2513
    :cond_17
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_c

    .line 2515
    :cond_18
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_19

    .line 2516
    move-object/from16 p1, v13

    .line 2518
    :cond_19
    move/from16 v0, v29

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    .line 2519
    const/16 v29, -0x1

    .line 2521
    :cond_1a
    const/16 v25, -0x1

    .line 2522
    goto/16 :goto_8

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v16           #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .end local v17           #dstPos:I
    .end local v21           #gotOptions:Z
    :cond_1b
    if-nez v20, :cond_1c

    if-nez v18, :cond_1c

    if-eqz v15, :cond_27

    .line 2528
    :cond_1c
    if-eqz v15, :cond_20

    .line 2532
    add-int/lit8 v25, v27, 0x1

    .line 2535
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v28

    if-ne v2, v0, :cond_1d

    .line 2536
    add-int/lit8 v25, v25, 0x1

    goto :goto_d

    .line 2538
    :cond_1d
    add-int/lit8 v25, v25, -0x1

    .line 2542
    :cond_1e
    :goto_e
    const/4 v3, 0x0

    .line 2543
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    if-nez v14, :cond_21

    const/16 v21, 0x1

    .line 2544
    .restart local v21       #gotOptions:Z
    :goto_f
    move/from16 v4, v27

    .restart local v4       #srcPos:I
    :goto_10
    move/from16 v0, v25

    if-gt v4, v0, :cond_24

    .line 2545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2546
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_22

    .line 2544
    :cond_1f
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2539
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v21           #gotOptions:Z
    :cond_20
    if-gez v25, :cond_1e

    .line 2540
    move/from16 v25, v27

    goto :goto_e

    .line 2543
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    :cond_21
    const/16 v21, 0x0

    goto :goto_f

    .line 2549
    .restart local v4       #srcPos:I
    .restart local v21       #gotOptions:Z
    :cond_22
    const/4 v14, 0x0

    .line 2550
    if-nez v21, :cond_23

    if-nez v30, :cond_23

    .line 2551
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v30

    .line 2552
    if-eqz v30, :cond_23

    .line 2553
    const/16 v21, 0x1

    .line 2556
    :cond_23
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2558
    add-int/lit8 v25, v25, -0x1

    .line 2559
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    .line 2562
    :cond_24
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_25

    .line 2563
    move-object/from16 p1, v13

    .line 2565
    :cond_25
    move/from16 v0, v29

    move/from16 v1, v25

    if-ne v0, v1, :cond_26

    .line 2566
    const/16 v29, -0x1

    .line 2568
    :cond_26
    const/16 v25, -0x1

    .line 2569
    goto/16 :goto_8

    .line 2573
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v21           #gotOptions:Z
    :cond_27
    const/16 v25, -0x1

    goto/16 :goto_8

    .line 2578
    .end local v15           #clearWhenTaskReset:Z
    :cond_28
    const/16 v25, -0x1

    goto/16 :goto_8

    .line 2581
    :cond_29
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2b

    if-eqz v13, :cond_2a

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_2b

    .line 2589
    :cond_2a
    if-gez v25, :cond_8

    .line 2590
    move/from16 v25, v27

    goto/16 :goto_8

    .line 2593
    :cond_2b
    if-ltz v29, :cond_3e

    if-eqz v12, :cond_3e

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_3e

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2607
    if-nez v20, :cond_2c

    if-eqz v18, :cond_32

    .line 2608
    :cond_2c
    if-gez v25, :cond_2d

    .line 2609
    move/from16 v25, v27

    .line 2611
    :cond_2d
    const/4 v3, 0x0

    .line 2612
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v2, :cond_2e

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finishing task at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :cond_2e
    move/from16 v4, v27

    .restart local v4       #srcPos:I
    :goto_12
    move/from16 v0, v25

    if-gt v4, v0, :cond_31

    .line 2615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2616
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_30

    .line 2614
    :cond_2f
    :goto_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2619
    :cond_30
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2621
    add-int/lit8 v29, v29, -0x1

    .line 2622
    add-int/lit8 v24, v24, -0x1

    .line 2623
    add-int/lit8 v25, v25, -0x1

    .line 2624
    add-int/lit8 v4, v4, -0x1

    goto :goto_13

    .line 2627
    :cond_31
    const/16 v25, -0x1

    .line 2628
    goto/16 :goto_8

    .line 2629
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_32
    if-gez v25, :cond_33

    .line 2630
    move/from16 v25, v27

    .line 2632
    :cond_33
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v2, :cond_34

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reparenting task at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    :cond_34
    move/from16 v4, v25

    .restart local v4       #srcPos:I
    :goto_14
    move/from16 v0, v27

    if-lt v4, v0, :cond_3b

    .line 2635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2636
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_36

    .line 2634
    :cond_35
    :goto_15
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 2639
    :cond_36
    if-gez v24, :cond_3a

    .line 2640
    move/from16 v24, v29

    .line 2641
    move-object/from16 p1, v3

    .line 2645
    :goto_16
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_37

    .line 2646
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v2, "here"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2647
    .restart local v22       #here:Ljava/lang/RuntimeException;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2648
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing and adding activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to stack at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2651
    .end local v22           #here:Ljava/lang/RuntimeException;
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2652
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v2, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v2, :cond_38

    .line 2656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 2659
    :cond_38
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v2, :cond_39

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pulling activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in to resetting task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v24

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 2663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2664
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->VALIDATE_TOKENS:Z

    if-eqz v2, :cond_35

    .line 2665
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->validateAppTokensLocked()V

    goto/16 :goto_15

    .line 2643
    :cond_3a
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_16

    .line 2668
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    :cond_3b
    const/16 v25, -0x1

    .line 2674
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    .line 2675
    add-int/lit8 v7, v24, -0x1

    .local v7, j:I
    :goto_17
    if-ltz v7, :cond_8

    .line 2676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2677
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_3d

    .line 2675
    :cond_3c
    :goto_18
    add-int/lit8 v7, v7, -0x1

    goto :goto_17

    .line 2680
    :cond_3d
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2681
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "replace"

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object v6, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2683
    add-int/lit8 v29, v29, -0x1

    .line 2684
    add-int/lit8 v24, v24, -0x1

    goto :goto_18

    .line 2691
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v7           #j:I
    :cond_3e
    if-eqz v13, :cond_8

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v5, :cond_8

    .line 2694
    const/16 v25, -0x1

    goto/16 :goto_8

    .line 2707
    .end local v12           #allowTaskReparenting:Z
    .end local v13           #below:Lcom/android/server/am/ActivityRecord;
    .end local v18           #finishOnTaskLaunch:Z
    .end local v19           #flags:I
    :cond_3f
    invoke-virtual/range {v30 .. v30}, Landroid/app/ActivityOptions;->abort()V

    goto/16 :goto_4
.end method

.method private final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .locals 24
    .parameter "r"
    .parameter "newTask"
    .parameter "doResume"
    .parameter "keepCurTransition"
    .parameter "options"

    .prologue
    .line 2195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 2197
    .local v16, NH:I
    const/4 v4, -0x1

    .line 2199
    .local v4, addPos:I
    if-nez p2, :cond_8

    .line 2201
    const/16 v23, 0x1

    .line 2202
    .local v23, startIt:Z
    add-int/lit8 v19, v16, -0x1

    .local v19, i:I
    :goto_0
    if-ltz v19, :cond_8

    .line 2203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ActivityRecord;

    .line 2204
    .local v20, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    .line 2202
    :cond_0
    :goto_1
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 2207
    :cond_1
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_7

    .line 2211
    add-int/lit8 v4, v19, 0x1

    .line 2212
    if-nez v23, :cond_8

    .line 2213
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_ADD_REMOVE:Z

    if-eqz v3, :cond_2

    .line 2214
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v3, "here"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2215
    .local v18, here:Ljava/lang/RuntimeException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2216
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to stack at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2219
    .end local v18           #here:Ljava/lang/RuntimeException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2220
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v3, :cond_3

    .line 2223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 2226
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ActivityInfo;->navigationHide:Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/WindowManagerService;->addAppToken(IILandroid/view/IApplicationToken;IIZZZ)V

    .line 2229
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->VALIDATE_TOKENS:Z

    if-eqz v3, :cond_4

    .line 2230
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->validateAppTokensLocked()V

    .line 2232
    :cond_4
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2353
    .end local v19           #i:I
    .end local v20           #p:Lcom/android/server/am/ActivityRecord;
    .end local v23           #startIt:Z
    :cond_5
    :goto_3
    return-void

    .line 2226
    .restart local v19       #i:I
    .restart local v20       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v23       #startIt:Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 2237
    :cond_7
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v3, :cond_0

    .line 2238
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 2245
    .end local v19           #i:I
    .end local v20           #p:Lcom/android/server/am/ActivityRecord;
    .end local v23           #startIt:Z
    :cond_8
    if-gez v4, :cond_9

    .line 2246
    move/from16 v4, v16

    .line 2252
    :cond_9
    move/from16 v0, v16

    if-ge v4, v0, :cond_a

    .line 2253
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 2254
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_USER_LEAVING:Z

    if-eqz v3, :cond_a

    const-string v3, "ActivityManager"

    const-string v5, "startActivity() behind front, mUserLeaving=false"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    :cond_a
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_ADD_REMOVE:Z

    if-eqz v3, :cond_b

    .line 2259
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v3, "here"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2260
    .restart local v18       #here:Ljava/lang/RuntimeException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 2261
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to stack at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2263
    .end local v18           #here:Ljava/lang/RuntimeException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2264
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v3, :cond_c

    .line 2267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 2270
    :cond_c
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2271
    if-lez v16, :cond_1b

    .line 2275
    move/from16 v15, p2

    .line 2276
    .local v15, showStartingIcon:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    .line 2277
    .local v22, proc:Lcom/android/server/am/ProcessRecord;
    if-nez v22, :cond_d

    .line 2278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/server/ProcessMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #proc:Lcom/android/server/am/ProcessRecord;
    check-cast v22, Lcom/android/server/am/ProcessRecord;

    .line 2280
    .restart local v22       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_d
    if-eqz v22, :cond_e

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_f

    .line 2281
    :cond_e
    const/4 v15, 0x1

    .line 2283
    :cond_f
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_10

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prepare open transition: starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_10
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_15

    .line 2286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v5, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2295
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_17

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ActivityInfo;->navigationHide:Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/WindowManagerService;->addAppToken(IILandroid/view/IApplicationToken;IIZZZ)V

    .line 2299
    const/16 v17, 0x1

    .line 2300
    .local v17, doShow:Z
    if-eqz p2, :cond_11

    .line 2306
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x20

    and-int/2addr v3, v5

    if-eqz v3, :cond_11

    .line 2308
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 2309
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_18

    const/16 v17, 0x1

    .line 2312
    :cond_11
    :goto_6
    if-eqz v17, :cond_13

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    .line 2318
    .local v21, prev:Lcom/android/server/am/ActivityRecord;
    if-eqz v21, :cond_12

    .line 2321
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v5, :cond_19

    const/16 v21, 0x0

    .line 2325
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v9}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz v21, :cond_1a

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_8
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    .line 2346
    .end local v15           #showStartingIcon:Z
    .end local v17           #doShow:Z
    .end local v21           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v22           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_13
    :goto_9
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->VALIDATE_TOKENS:Z

    if-eqz v3, :cond_14

    .line 2347
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->validateAppTokensLocked()V

    .line 2350
    :cond_14
    if-eqz p3, :cond_5

    .line 2351
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_3

    .line 2290
    .restart local v15       #showStartingIcon:Z
    .restart local v22       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_16

    const/16 v3, 0x1008

    :goto_a
    move/from16 v0, p4

    invoke-virtual {v5, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2290
    :cond_16
    const/16 v3, 0x1006

    goto :goto_a

    .line 2296
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 2309
    .restart local v17       #doShow:Z
    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 2323
    .restart local v21       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_19
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_12

    const/16 v21, 0x0

    goto :goto_7

    .line 2325
    :cond_1a
    const/4 v14, 0x0

    goto :goto_8

    .line 2336
    .end local v15           #showStartingIcon:Z
    .end local v17           #doShow:Z
    .end local v21           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v22           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-nez v3, :cond_1c

    .line 2337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2340
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_1d

    const/4 v10, 0x1

    :goto_b
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ActivityInfo;->navigationHide:Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/WindowManagerService;->addAppToken(IILandroid/view/IApplicationToken;IIZZZ)V

    .line 2343
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_9

    .line 2340
    :cond_1d
    const/4 v10, 0x0

    goto :goto_b
.end method

.method private final startPausingLocked(ZZ)V
    .locals 12
    .parameter "userLeaving"
    .parameter "uiSleeping"

    .prologue
    const-wide/16 v10, 0x40

    const/16 v9, 0x68

    const/4 v8, 0x0

    .line 1193
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_0

    .line 1194
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1195
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to pause when pause is already pending for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1198
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1200
    .local v3, prev:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1202
    .local v2, next:Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_2

    .line 1203
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1204
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Trying to pause when nothing is resumed"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1205
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1312
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 1208
    :cond_2
    sget-boolean v4, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v4, :cond_d

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving to PAUSING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_3
    :goto_1
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1211
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1212
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1213
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1214
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1218
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_4

    .line 1219
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Landroid/os/Process;->getRswapRssSum(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/am/ProcessRecord;->pauseAppMemUsage:J

    .line 1220
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v5, "/proc/mali/memory_usage"

    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStack;->readFileInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/android/server/am/ProcessRecord;->pause3DUsage:J

    .line 1221
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LTK] pid, app, 3d="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v6, v6, Lcom/android/server/am/ProcessRecord;->pauseAppMemUsage:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v6, v6, Lcom/android/server/am/ProcessRecord;->pause3DUsage:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_4
    const-string v4, "amScreenCapture"

    invoke-static {v10, v11, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1228
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiLauncher:Z

    if-nez v4, :cond_e

    .line 1229
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v4, :cond_5

    .line 1230
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1235
    :cond_5
    :goto_2
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1241
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v4, v5, :cond_7

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eqz v4, :cond_7

    if-eqz v2, :cond_6

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eq v4, v5, :cond_7

    .line 1242
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1247
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1249
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_f

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_f

    .line 1250
    sget-boolean v4, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_8

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enqueueing pending pause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_8
    const/16 v4, 0x753d

    const/4 v5, 0x3

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1256
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v4, :cond_9

    .line 1257
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACT-AM_PAUSE_ACTIVITY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_9
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v7, v3, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v4, v5, v6, p1, v7}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 1261
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v4, :cond_a

    .line 1262
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    :cond_a
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_b

    .line 1278
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1279
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1281
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1282
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1287
    .end local v1           #msg:Landroid/os/Message;
    :cond_b
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_11

    .line 1292
    if-nez p2, :cond_10

    .line 1293
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1301
    :cond_c
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1302
    .restart local v1       #msg:Landroid/os/Message;
    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1304
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1305
    sget-boolean v4, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_1

    const-string v4, "ActivityManager"

    const-string v5, "Waiting for pause to complete..."

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1209
    .end local v1           #msg:Landroid/os/Message;
    :cond_d
    sget-boolean v4, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_3

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start pausing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1233
    :cond_e
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1264
    :catch_0
    move-exception v0

    .line 1266
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    const-string v5, "Exception thrown during pause"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1267
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1268
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_3

    .line 1271
    .end local v0           #e:Ljava/lang/Exception;
    :cond_f
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1272
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_3

    .line 1295
    :cond_10
    sget-boolean v4, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_c

    const-string v4, "ActivityManager"

    const-string v5, "Key dispatch not paused for screen off"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1309
    :cond_11
    sget-boolean v4, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_12

    const-string v4, "ActivityManager"

    const-string v5, "Activity not running, resuming next."

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_12
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_0
.end method

.method private final startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 19
    .parameter "r"
    .parameter "andResume"
    .parameter "checkConfig"

    .prologue
    .line 1008
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v13

    .line 1011
    .local v13, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 1012
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    .line 1013
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1014
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/am/ActivityRecord;->launchTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 1020
    :cond_0
    const/16 v16, 0x0

    .line 1021
    .local v16, fos:Ljava/io/FileOutputStream;
    const-string v18, "/sys/module/mlog/parameters/do_mlog"

    .line 1023
    .local v18, path:Ljava/lang/String;
    :try_start_0
    const-string v14, "2"

    .line 1024
    .local v14, data:Ljava/lang/String;
    new-instance v17, Ljava/io/FileOutputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1025
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .local v17, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1029
    if-eqz v17, :cond_6

    .line 1031
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v16, v17

    .line 1042
    .end local v14           #data:Ljava/lang/String;
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .end local v18           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v13, :cond_5

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_5

    .line 1044
    :try_start_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;)Z

    .line 1045
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1064
    :cond_2
    :goto_1
    return-void

    .line 1032
    .restart local v14       #data:Ljava/lang/String;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object/from16 v16, v17

    .line 1033
    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1026
    .end local v14           #data:Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 1027
    .local v15, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1029
    if-eqz v16, :cond_1

    .line 1031
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1032
    :catch_2
    move-exception v4

    goto :goto_0

    .line 1029
    .end local v15           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v16, :cond_3

    .line 1031
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1033
    :cond_3
    :goto_4
    throw v4

    .line 1038
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .end local v18           #path:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1039
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    goto :goto_0

    .line 1047
    :catch_3
    move-exception v15

    .line 1048
    .local v15, e:Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when starting activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1056
    .end local v15           #e:Landroid/os/RemoteException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "activity"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZ)Lcom/android/server/am/ProcessRecord;

    .line 1060
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_2

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6a

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1032
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #path:Ljava/lang/String;
    :catch_4
    move-exception v5

    goto :goto_4

    .line 1029
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #data:Ljava/lang/String;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1026
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v15

    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v17       #fos:Ljava/io/FileOutputStream;
    :cond_6
    move-object/from16 v16, v17

    .end local v17           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method private final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 3929
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 3932
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_3

    .line 3933
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v0, :cond_a

    .line 3934
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v0, :cond_2

    .line 3935
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no-history finish of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v4, "no-history"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3946
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_9

    .line 3947
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_4

    .line 3948
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_4

    .line 3949
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3952
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3954
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3955
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v0, :cond_5

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving to STOPPING: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (stop requested)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    :cond_5
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3958
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v0, :cond_6

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping visible="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_7

    .line 3961
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3963
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v0, v1, v3, v4}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 3964
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3965
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 3967
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 3968
    .local v7, msg:Landroid/os/Message;
    iput-object p1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3969
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3984
    .end local v7           #msg:Landroid/os/Message;
    :cond_9
    :goto_1
    return-void

    .line 3940
    :cond_a
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not finishing noHistory "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " on stop because we\'re just sleeping"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3970
    :catch_0
    move-exception v6

    .line 3974
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3976
    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3977
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v0, :cond_b

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop failed; moving to STOPPED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    :cond_b
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3979
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_9

    .line 3980
    const-string v0, "stop-except"

    invoke-virtual {p0, p1, v8, v2, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto :goto_1
.end method

.method private final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 576
    .local v0, hadit:Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    return v0
.end method


# virtual methods
.method final activityDestroyed(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 4768
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 4769
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 4771
    .local v1, origId:J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4772
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 4773
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x69

    invoke-virtual {v4, v6, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4776
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 4777
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 4778
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v6, :cond_1

    .line 4779
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4780
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4783
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4785
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4787
    monitor-exit v5

    .line 4788
    return-void

    .line 4785
    .end local v0           #index:I
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4787
    .end local v1           #origId:J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method final activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 31
    .parameter "token"
    .parameter "fromTimeout"
    .parameter "config"

    .prologue
    .line 4037
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->localLOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity idle: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    :cond_0
    const/16 v23, 0x0

    .line 4041
    .local v23, res:Lcom/android/server/am/ActivityRecord;
    const/16 v27, 0x0

    .line 4042
    .local v27, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v19, 0x0

    .line 4043
    .local v19, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v28, 0x0

    .line 4044
    .local v28, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v25, 0x0

    .line 4045
    .local v25, startingUsers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    const/4 v13, 0x0

    .line 4046
    .local v13, NS:I
    const/4 v12, 0x0

    .line 4047
    .local v12, NF:I
    const/4 v14, 0x0

    .line 4048
    .local v14, NT:I
    const/16 v24, 0x0

    .line 4049
    .local v24, sendThumbnail:Landroid/app/IApplicationThread;
    const/16 v16, 0x0

    .line 4050
    .local v16, booting:Z
    const/16 v18, 0x0

    .line 4051
    .local v18, enableScreen:Z
    const/4 v15, 0x0

    .line 4054
    .local v15, activityRemoved:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 4056
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsPerfBoostEnable:Z

    if-eqz v2, :cond_1

    .line 4057
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/PerfService;->nativePerfBoostDisable(I)I

    .line 4058
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsPerfBoostEnable:Z

    .line 4062
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4063
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_2

    .line 4064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4065
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4069
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    .line 4070
    .local v22, index:I
    if-ltz v22, :cond_e

    .line 4071
    move-object/from16 v23, v4

    .line 4073
    if-eqz p2, :cond_3

    .line 4074
    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 4082
    :cond_3
    if-eqz p3, :cond_4

    .line 4083
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4087
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4094
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 4095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 4096
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v2, :cond_6

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_6

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_6

    .line 4097
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v24, v0

    .line 4098
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 4103
    :cond_6
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v2, :cond_7

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Idle activity for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4104
    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 4107
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_8

    .line 4108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_8

    .line 4109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 4110
    const/16 v18, 0x1

    .line 4119
    :cond_8
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v27

    .line 4120
    if-eqz v27, :cond_f

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 4121
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_9

    .line 4122
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4123
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v20, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v19, v20

    .line 4125
    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_a

    .line 4126
    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4127
    .end local v28           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v29, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v28, v29

    .line 4130
    .end local v29           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v28       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_b

    .line 4131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v16, v0

    .line 4132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 4134
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 4135
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4136
    .end local v25           #startingUsers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    .local v26, startingUsers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object/from16 v25, v26

    .line 4138
    .end local v26           #startingUsers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    .restart local v25       #startingUsers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    :cond_c
    :try_start_6
    monitor-exit v30
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4143
    if-eqz v24, :cond_d

    .line 4145
    :try_start_7
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->requestThumbnail(Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 4154
    :cond_d
    :goto_2
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move/from16 v0, v21

    if-ge v0, v13, :cond_11

    .line 4155
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4156
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4157
    :try_start_8
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_10

    .line 4158
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 4162
    :goto_4
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4154
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 4114
    .end local v21           #i:I
    :cond_e
    if-eqz p2, :cond_8

    .line 4115
    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object/from16 v5, p0

    move/from16 v6, p2

    :try_start_9
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    goto/16 :goto_0

    .line 4138
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #index:I
    :catchall_0
    move-exception v2

    :goto_5
    monitor-exit v30
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v2

    .line 4120
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #index:I
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 4146
    :catch_0
    move-exception v17

    .line 4147
    .local v17, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown when requesting thumbnail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4148
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 4160
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v21       #i:I
    :cond_10
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_4

    .line 4162
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v2

    .line 4167
    :cond_11
    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    if-ge v0, v12, :cond_12

    .line 4168
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4169
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4170
    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_b
    const-string v6, "finish-idle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v15

    .line 4171
    monitor-exit v3

    .line 4167
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 4171
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v2

    .line 4175
    :cond_12
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v14, :cond_13

    .line 4176
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4177
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    .line 4175
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 4180
    :cond_13
    if-eqz v16, :cond_17

    .line 4181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 4188
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 4192
    if-eqz v18, :cond_15

    .line 4193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    .line 4196
    :cond_15
    if-eqz v15, :cond_16

    .line 4198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4199
    const/4 v2, 0x0

    :try_start_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4200
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 4203
    :cond_16
    return-object v23

    .line 4182
    :cond_17
    if-eqz v25, :cond_14

    .line 4183
    const/16 v21, 0x0

    :goto_8
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_14

    .line 4184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserStartedState;)V

    .line 4183
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 4200
    :catchall_3
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v2

    .line 4138
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v21           #i:I
    .restart local v20       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_4
    move-exception v2

    move-object/from16 v19, v20

    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_5

    .end local v28           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v29       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_5
    move-exception v2

    move-object/from16 v28, v29

    .end local v29           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v28       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_5

    .end local v25           #startingUsers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    .restart local v26       #startingUsers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    :catchall_6
    move-exception v2

    move-object/from16 v25, v26

    .end local v26           #startingUsers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    .restart local v25       #startingUsers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    goto/16 :goto_5
.end method

.method final activityPaused(Landroid/os/IBinder;Z)V
    .locals 13
    .parameter "token"
    .parameter "timeout"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 1329
    sget-boolean v8, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v8, :cond_0

    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity paused: token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", timeout="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_0
    sget-boolean v8, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v8, :cond_1

    .line 1333
    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACT-paused: token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", timeout="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_1
    const/4 v5, 0x0

    .line 1338
    .local v5, r:Lcom/android/server/am/ActivityRecord;
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 1339
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v3

    .line 1340
    .local v3, index:I
    if-ltz v3, :cond_5

    .line 1341
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    .line 1342
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x65

    invoke-virtual {v8, v11, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1343
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v8, v5, :cond_8

    .line 1344
    sget-boolean v8, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v8, :cond_2

    const-string v11, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Moving to PAUSED: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz p2, :cond_6

    const-string v8, " (due to timeout)"

    :goto_0
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_2
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v8, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1348
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->completePauseLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 1354
    .local v7, topRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_4

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_4

    .line 1355
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v8, v11, :cond_7

    .line 1356
    .local v4, isTopApp:Z
    :goto_1
    sget-boolean v8, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v8, :cond_3

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LTK top isHome:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, v7, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_3
    iget-boolean v8, v7, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v8, :cond_4

    if-nez v4, :cond_4

    .line 1358
    const-class v8, Lcom/mediatek/common/amsplus/IAmsPlus;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/amsplus/IAmsPlus;

    .line 1359
    .local v1, ap:Lcom/mediatek/common/amsplus/IAmsPlus;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 1360
    .local v6, topAct:Lcom/android/server/am/ActivityRecord;
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->convertProcessRecord(Lcom/android/server/am/ProcessRecord;)Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;

    move-result-object v8

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->convertLaunchRecord(Lcom/android/server/am/ActivityRecord;)Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;

    move-result-object v9

    invoke-interface {v1, v8, v9, p2}, Lcom/mediatek/common/amsplus/IAmsPlus;->onActivityPauseTimeout(Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1386
    .end local v1           #ap:Lcom/mediatek/common/amsplus/IAmsPlus;
    .end local v4           #isTopApp:Z
    .end local v6           #topAct:Lcom/android/server/am/ActivityRecord;
    .end local v7           #topRecord:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_2
    :try_start_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Paused:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    invoke-virtual {v8, v9, v11, v12}, Lcom/android/server/am/ActivityManagerService;->notifyActivityState(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V

    .line 1389
    :cond_5
    monitor-exit v10

    .line 1390
    return-void

    .line 1344
    :cond_6
    const-string v8, " (pause complete)"

    goto :goto_0

    .restart local v7       #topRecord:Lcom/android/server/am/ActivityRecord;
    :cond_7
    move v4, v9

    .line 1355
    goto :goto_1

    .line 1363
    .end local v7           #topRecord:Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v2

    .line 1364
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "ActivityManager"

    const-string v9, "[LTK] Exception thrown during onActivityPauseTimeout failed:"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1389
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #index:I
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 1370
    .restart local v3       #index:I
    :cond_8
    const/16 v9, 0x753c

    const/4 v8, 0x4

    :try_start_3
    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v12, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v8, 0x2

    iget-object v12, v5, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v12, v11, v8

    const/4 v12, 0x3

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_3
    aput-object v8, v11, v12

    invoke-static {v9, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1375
    sget-boolean v8, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v8, :cond_4

    .line 1376
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACT-AM_FAILED_TO_PAUSE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " PausingActivity:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1370
    :cond_9
    const-string v8, "(none)"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method final activityResumed(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 1315
    const/4 v2, 0x0

    .line 1317
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1318
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1319
    .local v1, index:I
    if-ltz v1, :cond_1

    .line 1320
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v2, v0

    .line 1321
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_SAVED_STATE:Z

    if-eqz v3, :cond_0

    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resumed activity; dropping state of: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1323
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1325
    :cond_1
    monitor-exit v4

    .line 1326
    return-void

    .line 1325
    .end local v1           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1098
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1099
    return-void
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "r"
    .parameter "icicle"
    .parameter "thumbnail"
    .parameter "description"

    .prologue
    const/16 v5, 0x6c

    const/4 v4, 0x1

    .line 1394
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    .line 1395
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1399
    :cond_1
    sget-boolean v1, Lcom/android/server/am/ActivityStack;->DEBUG_SAVED_STATE:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving icicle of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_2
    if-eqz p2, :cond_3

    .line 1403
    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1404
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1405
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1407
    :cond_3
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v1, :cond_0

    .line 1408
    sget-boolean v1, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v1, :cond_4

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving to STOPPED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (stop complete)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1410
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1411
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1412
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_5

    .line 1413
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_0

    .line 1415
    :cond_5
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v1, :cond_6

    .line 1416
    const/4 v1, 0x0

    const-string v2, "stop-config"

    invoke-virtual {p0, p1, v4, v1, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    .line 1417
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    .line 1422
    :cond_6
    const/4 v0, 0x0

    .line 1423
    .local v0, fgApp:Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_8

    .line 1424
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1428
    :cond_7
    :goto_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v1, v0, :cond_0

    iget-wide v1, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v1, v2, :cond_0

    .line 1431
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 1432
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    goto/16 :goto_0

    .line 1425
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_7

    .line 1426
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_1
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1083
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1084
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 1085
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1086
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1089
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1090
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1091
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1089
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1093
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1094
    return-void
.end method

.method checkReadyForSleepLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1102
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    if-nez v2, :cond_c

    .line 1108
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_4

    .line 1110
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v2, :cond_2

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep needs to pause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_2
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_USER_LEAVING:Z

    if-eqz v2, :cond_3

    const-string v2, "ActivityManager"

    const-string v3, "Sleep => pause with userLeaving=false"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_3
    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    goto :goto_0

    .line 1115
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5

    .line 1117
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep still waiting to pause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1121
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 1123
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v2, :cond_6

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep still need to stop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " activities"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    .line 1128
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v2, :cond_7

    .line 1129
    const-string v2, "ActivityManager"

    const-string v3, "ACT-IDLE_NOW_MSG from checkReadyForSleepLocked for mStoppingActivities.size() > 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0

    .line 1141
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1145
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_b

    .line 1146
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1147
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_9

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_a

    .line 1148
    :cond_9
    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1145
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1152
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_b
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 1154
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep still need to sleep "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " activities"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1160
    .end local v0           #i:I
    :cond_c
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1162
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1163
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1165
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_0

    .line 1166
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 8
    .parameter "r"
    .parameter "cleanServices"
    .parameter "setState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 4510
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    .line 4511
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4513
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    .line 4514
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v6, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4517
    :cond_1
    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 4518
    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 4520
    if-eqz p3, :cond_3

    .line 4521
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v3, :cond_2

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to DESTROYED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (cleaning up)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4522
    :cond_2
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4523
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4529
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4530
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4533
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_6

    .line 4534
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4535
    .local v0, apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 4536
    .local v2, rec:Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_4

    .line 4537
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v7}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    .line 4540
    .end local v0           #apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2           #rec:Lcom/android/server/am/PendingIntentRecord;
    :cond_5
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4543
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_6
    if-eqz p2, :cond_7

    .line 4544
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4547
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 4551
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4555
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4556
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 4599
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    .line 4600
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4601
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4602
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 4603
    .local v0, c:Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 4605
    .end local v0           #c:Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 4607
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method final convertLaunchRecord(Lcom/android/server/am/ActivityRecord;)Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;
    .locals 1
    .parameter "actRec"

    .prologue
    .line 942
    new-instance v0, Lcom/android/server/am/ActivityStack$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStack$3;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)V

    return-object v0
.end method

.method final convertProcessRecord(Lcom/android/server/am/ProcessRecord;)Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
    .locals 1
    .parameter "pr"

    .prologue
    .line 909
    if-nez p1, :cond_0

    .line 910
    const/4 v0, 0x0

    .line 911
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityStack$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStack$2;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .locals 7
    .parameter "owner"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 4616
    const/4 v2, 0x0

    .line 4617
    .local v2, lastIsOpaque:Z
    const/4 v0, 0x0

    .line 4618
    .local v0, activityRemoved:Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_5

    .line 4619
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4620
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 4618
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4623
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_2

    .line 4624
    const/4 v2, 0x1

    .line 4626
    :cond_2
    if-eqz p1, :cond_3

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_0

    .line 4629
    :cond_3
    if-eqz v2, :cond_0

    .line 4634
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    .line 4638
    sget-boolean v4, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v4, :cond_4

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resumed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pausing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4641
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p2, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4642
    const/4 v0, 0x1

    goto :goto_1

    .line 4646
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-eqz v0, :cond_6

    .line 4647
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4649
    :cond_6
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z
    .locals 10
    .parameter "r"
    .parameter "removeFromApp"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 4659
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_CLEANUP:Z

    if-eqz v6, :cond_1

    :cond_0
    const-string v7, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing activity from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": token="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", app="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_a

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    :cond_1
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v6, :cond_2

    .line 4664
    const-string v7, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACT-Removing activity from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": token="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", app="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_b

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Destroyed:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->notifyActivityState(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V

    .line 4678
    const/16 v6, 0x7542

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4682
    const/4 v4, 0x0

    .line 4684
    .local v4, removedFromHistory:Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4686
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_c

    const/4 v1, 0x1

    .line 4688
    .local v1, hadApp:Z
    :goto_2
    if-eqz v1, :cond_f

    .line 4689
    if-eqz p2, :cond_5

    .line 4690
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4691
    .local v2, idx:I
    if-ltz v2, :cond_3

    .line 4692
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4694
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_4

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_4

    .line 4695
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 4696
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4699
    :cond_4
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 4701
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4705
    .end local v2           #idx:I
    :cond_5
    const/4 v5, 0x0

    .line 4708
    .local v5, skipDestroy:Z
    :try_start_0
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v6, :cond_6

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4709
    :cond_6
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4723
    :cond_7
    :goto_3
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4732
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_d

    if-nez v5, :cond_d

    .line 4733
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v6, :cond_8

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Moving to DESTROYING: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (destroy requested)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    :cond_8
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4736
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x69

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4737
    .local v3, msg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4738
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4758
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #skipDestroy:Z
    :goto_4
    const/4 v6, 0x0

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4760
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz v1, :cond_9

    .line 4761
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " being finished, but not in LRU list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    :cond_9
    return v4

    .line 4659
    .end local v1           #hadApp:Z
    .end local v4           #removedFromHistory:Z
    :cond_a
    const-string v6, "(null)"

    goto/16 :goto_0

    .line 4664
    :cond_b
    const-string v6, "(null)"

    goto/16 :goto_1

    .line 4686
    .restart local v4       #removedFromHistory:Z
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 4711
    .restart local v1       #hadApp:Z
    .restart local v5       #skipDestroy:Z
    :catch_0
    move-exception v0

    .line 4716
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_7

    .line 4717
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4718
    const/4 v4, 0x1

    .line 4719
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 4740
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v6, :cond_e

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Moving to DESTROYED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (destroy skipped)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    :cond_e
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4743
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_4

    .line 4747
    .end local v5           #skipDestroy:Z
    :cond_f
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_10

    .line 4748
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4749
    const/4 v4, 0x1

    goto :goto_4

    .line 4751
    :cond_10
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v6, :cond_11

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Moving to DESTROYED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (no app)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4753
    :cond_11
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4754
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_4
.end method

.method public dismissKeyguardOnNextActivityLocked()V
    .locals 1

    .prologue
    .line 5456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 5457
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 2
    .parameter "starting"
    .parameter "configChanges"

    .prologue
    const/4 v1, 0x0

    .line 1752
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1753
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1754
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1756
    :cond_0
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 11
    .parameter "top"
    .parameter "starting"
    .parameter "onlyThisProcess"
    .parameter "configChanges"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1600
    sget-boolean v8, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v8, :cond_0

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ensureActivitiesVisible behind "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " configChanges=0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHaltActivityLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1606
    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mHaltActivity:Z

    if-eqz v9, :cond_2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->checkIfBlockResumeTop(Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1607
    const-string v6, "ActivityManager"

    const-string v7, "ACT-Because running the window animation, can\'t ensureActivitiesVisibleLocked"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    monitor-exit v8

    .line 1745
    :cond_1
    return-void

    .line 1610
    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1614
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1615
    .local v1, count:I
    add-int/lit8 v4, v1, -0x1

    .line 1616
    .local v4, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, p1, :cond_3

    .line 1617
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1610
    .end local v1           #count:I
    .end local v4           #i:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1620
    .restart local v1       #count:I
    .restart local v4       #i:I
    :cond_3
    const/4 v0, 0x0

    .line 1621
    .local v0, behindFullscreen:Z
    :goto_1
    if-ltz v4, :cond_11

    .line 1622
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1623
    .local v5, r:Lcom/android/server/am/ActivityRecord;
    sget-boolean v8, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v8, :cond_4

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Make visible? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " finishing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_4
    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_6

    .line 1621
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1630
    :cond_6
    if-eqz p3, :cond_7

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    :cond_7
    move v2, v7

    .line 1635
    .local v2, doThisProcess:Z
    :goto_2
    if-eq v5, p2, :cond_8

    if-eqz v2, :cond_8

    .line 1636
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 1639
    :cond_8
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_9

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v8, :cond_18

    .line 1640
    :cond_9
    if-eqz p3, :cond_a

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1645
    :cond_a
    sget-boolean v8, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v8, :cond_b

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start and freeze screen for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_b
    if-eq v5, p2, :cond_c

    .line 1648
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v8, p4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1650
    :cond_c
    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v8, :cond_e

    .line 1651
    sget-boolean v8, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v8, :cond_d

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting and making visible: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_d
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1655
    :cond_e
    if-eq v5, p2, :cond_f

    .line 1656
    invoke-direct {p0, v5, v6, v6}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1692
    :cond_f
    :goto_3
    iget v8, v5, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr p4, v8

    .line 1694
    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v8, :cond_5

    .line 1696
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v7, :cond_10

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stopping: fullscreen at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :cond_10
    const/4 v0, 0x1

    .line 1699
    add-int/lit8 v4, v4, -0x1

    .line 1706
    .end local v2           #doThisProcess:Z
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_11
    :goto_4
    if-ltz v4, :cond_1

    .line 1707
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1708
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v7, :cond_12

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Make invisible? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " finishing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " behindFullscreen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_12
    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_16

    .line 1713
    if-eqz v0, :cond_1d

    .line 1714
    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_1c

    .line 1715
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v7, :cond_13

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making invisible: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_13
    iput-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1719
    :try_start_2
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1720
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_14

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_16

    :cond_14
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_16

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v7, :cond_16

    .line 1723
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v7, :cond_15

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scheduling invisibility: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_15
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1743
    :cond_16
    :goto_5
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_4

    :cond_17
    move v2, v6

    .line 1630
    goto/16 :goto_2

    .line 1660
    .restart local v2       #doThisProcess:Z
    :cond_18
    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v8, :cond_1a

    .line 1663
    sget-boolean v8, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v8, :cond_19

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping: already visible at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_19
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_3

    .line 1667
    :cond_1a
    if-nez p3, :cond_f

    .line 1670
    iput-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1671
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v8, v9, :cond_f

    if-eq v5, p2, :cond_f

    .line 1674
    sget-boolean v8, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v8, :cond_1b

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Making visible and scheduling visibility: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_1b
    :try_start_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1678
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1679
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1680
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 1681
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 1682
    :catch_0
    move-exception v3

    .line 1685
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception thrown making visibile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1727
    .end local v2           #doThisProcess:Z
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1730
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception thrown making hidden: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1734
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1c
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v7, :cond_16

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Already invisible: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1737
    :cond_1d
    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_16

    .line 1738
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_VISBILITY:Z

    if-eqz v7, :cond_1e

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Now behindFullscreen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_1e
    const/4 v0, 0x1

    goto/16 :goto_5
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 10
    .parameter "r"
    .parameter "globalChanges"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5272
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v7, :cond_2

    .line 5273
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping config check (will change): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5400
    :cond_1
    :goto_0
    return v5

    .line 5278
    :cond_2
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v7, :cond_3

    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_4

    :cond_3
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ensuring correct configuration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5283
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v7, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 5284
    .local v2, newConfig:Landroid/content/res/Configuration;
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v7, v2, :cond_6

    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-nez v7, :cond_6

    .line 5285
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v6, :cond_1

    :cond_5
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configuration unchanged in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5291
    :cond_6
    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_9

    .line 5292
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v7, :cond_7

    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_8

    :cond_7
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configuration doesn\'t matter in finishing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5294
    :cond_8
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 5300
    :cond_9
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 5301
    .local v4, oldConfig:Landroid/content/res/Configuration;
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 5308
    invoke-virtual {v4, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 5310
    .local v0, changes:I
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_a

    sget-boolean v7, Lcom/android/server/am/ActivityStack;->mIsHwNaviBar:Z

    if-eqz v7, :cond_a

    .line 5312
    const/16 v3, 0x500

    .line 5313
    .local v3, newmask:I
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 5314
    .local v1, newChanges:I
    and-int/lit16 v7, v1, 0x500

    if-nez v7, :cond_c

    .line 5315
    and-int/lit16 v0, v0, -0x501

    .line 5324
    .end local v1           #newChanges:I
    .end local v3           #newmask:I
    :cond_a
    :goto_1
    if-nez v0, :cond_f

    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-nez v7, :cond_f

    .line 5325
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v6, :cond_b

    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v6, :cond_1

    :cond_b
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configuration no differences in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5316
    .restart local v1       #newChanges:I
    .restart local v3       #newmask:I
    :cond_c
    and-int/lit16 v7, v1, 0x80

    if-eqz v7, :cond_a

    .line 5317
    const/16 v7, 0x500

    if-eq v0, v7, :cond_d

    const/16 v7, 0x400

    if-ne v0, v7, :cond_e

    .line 5318
    :cond_d
    and-int/lit16 v0, v0, -0x401

    .line 5320
    :cond_e
    and-int/lit16 v0, v0, -0x101

    goto :goto_1

    .line 5332
    .end local v1           #newChanges:I
    .end local v3           #newmask:I
    :cond_f
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_10

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v7, :cond_13

    .line 5333
    :cond_10
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v7, :cond_11

    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_12

    :cond_11
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configuration doesn\'t matter not running "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5335
    :cond_12
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 5336
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    goto/16 :goto_0

    .line 5341
    :cond_13
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v7, :cond_14

    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_15

    .line 5342
    :cond_14
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking to restart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": changed=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", handles=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newConfig="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5347
    :cond_15
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v7

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v7, v0

    if-nez v7, :cond_16

    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v7, :cond_23

    .line 5349
    :cond_16
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v7, v0

    iput v7, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 5350
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v7, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 5351
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 5352
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_17

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v7, :cond_1a

    .line 5353
    :cond_17
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v7, :cond_18

    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_19

    :cond_18
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Config is destroying non-running "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5355
    :cond_19
    const-string v7, "config"

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    :goto_2
    move v5, v6

    .line 5382
    goto/16 :goto_0

    .line 5356
    :cond_1a
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_1d

    .line 5360
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v6, :cond_1b

    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v6, :cond_1c

    :cond_1b
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config is skipping already pausing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5362
    :cond_1c
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    goto/16 :goto_0

    .line 5364
    :cond_1d
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_20

    .line 5369
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v7, :cond_1e

    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_1f

    :cond_1e
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Config is relaunching resumed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5371
    :cond_1f
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v7, v5}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 5372
    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_2

    .line 5374
    :cond_20
    sget-boolean v5, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v5, :cond_21

    sget-boolean v5, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_22

    :cond_21
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config is relaunching non-resumed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5376
    :cond_22
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 5377
    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto/16 :goto_2

    .line 5390
    :cond_23
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_25

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v7, :cond_25

    .line 5392
    :try_start_0
    sget-boolean v7, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_24

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending new config to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5393
    :cond_24
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v7, v8}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5398
    :cond_25
    :goto_3
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_0

    .line 5394
    :catch_0
    move-exception v7

    goto :goto_3
.end method

.method final finishActivityAffinityLocked(Landroid/os/IBinder;)Z
    .locals 8
    .parameter "token"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 4271
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 4272
    .local v2, index:I
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing activity affinity @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    :cond_0
    if-gez v2, :cond_1

    .line 4294
    :goto_0
    return v3

    .line 4277
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 4279
    .local v7, r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    if-ltz v2, :cond_2

    .line 4280
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4281
    .local v1, cur:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, v4, :cond_3

    .end local v1           #cur:Lcom/android/server/am/ActivityRecord;
    :cond_2
    move v3, v6

    .line 4294
    goto :goto_0

    .line 4284
    .restart local v1       #cur:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 4287
    :cond_4
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4290
    :cond_5
    const/4 v4, 0x0

    const-string v5, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4292
    add-int/lit8 v2, v2, -0x1

    .line 4293
    goto :goto_1
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 8
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"
    .parameter "oomAdj"

    .prologue
    .line 4330
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z
    .locals 6
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"
    .parameter "immediate"
    .parameter "oomAdj"

    .prologue
    .line 4339
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 4340
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate finish request for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4341
    const/4 v2, 0x0

    .line 4415
    :goto_0
    return v2

    .line 4344
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 4345
    const/16 v2, 0x7531

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4349
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v2, :cond_1

    .line 4350
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACT-AM_FINISH_ACTIVITY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_3

    .line 4353
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4354
    .local v1, next:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v3, :cond_3

    .line 4355
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_2

    .line 4357
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 4359
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 4363
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4368
    .end local v1           #next:Lcom/android/server/am/ActivityRecord;
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 4369
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_4

    .line 4370
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_4

    .line 4371
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4375
    :cond_4
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4377
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 4381
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4384
    :cond_5
    if-eqz p6, :cond_7

    .line 4385
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, p7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4387
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_f

    .line 4388
    if-lez p2, :cond_8

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v3, :cond_d

    :cond_8
    const/4 v0, 0x1

    .line 4390
    .local v0, endTask:Z
    :goto_1
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_TRANSITION:Z

    if-eqz v2, :cond_9

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare close transition: finishing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    :cond_9
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_e

    const/16 v2, 0x2009

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4397
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4399
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_c

    .line 4400
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v2, :cond_a

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish needs to pause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    :cond_a
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_USER_LEAVING:Z

    if-eqz v2, :cond_b

    const-string v2, "ActivityManager"

    const-string v3, "finish() => pause with userLeaving=false"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4402
    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 4415
    .end local v0           #endTask:Z
    :cond_c
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4388
    :cond_d
    const/4 v0, 0x0

    goto :goto_1

    .line 4392
    .restart local v0       #endTask:Z
    :cond_e
    const/16 v2, 0x2007

    goto :goto_2

    .line 4405
    .end local v0           #endTask:Z
    :cond_f
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_12

    .line 4408
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v2, :cond_10

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish not pausing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    :cond_10
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2, p7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4412
    :cond_12
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v2, :cond_c

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish waiting for pause of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 7
    .parameter "r"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v6, 0x0

    .line 4299
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4300
    .local v0, resultTo:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    .line 4301
    sget-boolean v1, Lcom/android/server/am/ActivityStack;->DEBUG_RESULTS:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding result to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " who="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v1, :cond_1

    .line 4305
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 4309
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4311
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 4318
    :cond_2
    :goto_0
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4319
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4320
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4321
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4322
    return-void

    .line 4313
    :cond_3
    sget-boolean v1, Lcom/android/server/am/ActivityStack;->DEBUG_RESULTS:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No result destination from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final finishSubActivityLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 8
    .parameter "token"
    .parameter "resultWho"
    .parameter "requestCode"

    .prologue
    const/4 v3, 0x0

    .line 4251
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 4252
    .local v7, self:Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_0

    .line 4268
    :goto_0
    return-void

    .line 4257
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_4

    .line 4258
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4259
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v7, :cond_3

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_3

    .line 4260
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4262
    :cond_2
    const/4 v4, 0x0

    const-string v5, "request-sub"

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4257
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4267
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    goto :goto_0
.end method

.method public getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;
    .locals 8
    .parameter "taskId"
    .parameter "inclThumbs"

    .prologue
    .line 5191
    new-instance v6, Lcom/android/server/am/TaskAccessInfo;

    invoke-direct {v6}, Lcom/android/server/am/TaskAccessInfo;-><init>()V

    .line 5193
    .local v6, thumbs:Lcom/android/server/am/TaskAccessInfo;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5194
    .local v0, NA:I
    const/4 v3, 0x0

    .line 5195
    .local v3, j:I
    const/4 v2, 0x0

    .line 5196
    .local v2, holder:Lcom/android/server/am/ThumbnailHolder;
    :goto_0
    if-ge v3, v0, :cond_1

    .line 5197
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5198
    .local v1, ar:Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_3

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v7, p1, :cond_3

    .line 5199
    iput-object v1, v6, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    .line 5200
    iput v3, v6, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    .line 5201
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 5202
    if-eqz v2, :cond_0

    .line 5203
    iget-object v7, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v7, v6, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 5205
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 5211
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lt v3, v0, :cond_4

    .line 5251
    :cond_2
    :goto_1
    return-object v6

    .line 5208
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 5209
    goto :goto_0

    .line 5215
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5216
    .local v5, subtasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/TaskAccessInfo$SubTask;>;"
    iput-object v5, v6, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    .line 5217
    :cond_5
    :goto_2
    if-ge v3, v0, :cond_6

    .line 5218
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5219
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, 0x1

    .line 5220
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_5

    .line 5223
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v7, p1, :cond_7

    .line 5236
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget v7, v6, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    if-lez v7, :cond_2

    .line 5237
    new-instance v7, Lcom/android/server/am/ActivityStack$4;

    invoke-direct {v7, p0, v6}, Lcom/android/server/am/ActivityStack$4;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskAccessInfo;)V

    iput-object v7, v6, Lcom/android/server/am/TaskAccessInfo;->retriever:Landroid/app/IThumbnailRetriever;

    goto :goto_1

    .line 5226
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eq v7, v2, :cond_5

    if-eqz v2, :cond_5

    .line 5227
    iget v7, v6, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    .line 5228
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 5229
    new-instance v4, Lcom/android/server/am/TaskAccessInfo$SubTask;

    invoke-direct {v4}, Lcom/android/server/am/TaskAccessInfo$SubTask;-><init>()V

    .line 5230
    .local v4, sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iput-object v2, v4, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    .line 5231
    iput-object v1, v4, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    .line 5232
    add-int/lit8 v7, v3, -0x1

    iput v7, v4, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    .line 5233
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getTaskThumbnailsLocked(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$TaskThumbnails;
    .locals 4
    .parameter "tr"

    .prologue
    .line 5133
    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 5134
    .local v0, info:Lcom/android/server/am/TaskAccessInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5135
    .local v1, resumed:Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v2, p1, :cond_0

    .line 5136
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 5138
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 5139
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 5141
    :cond_1
    return-object v0
.end method

.method public getTaskTopThumbnailLocked(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "tr"

    .prologue
    .line 5145
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5146
    .local v1, resumed:Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, p1, :cond_0

    .line 5149
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5157
    :goto_0
    return-object v2

    .line 5153
    :cond_0
    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 5154
    .local v0, info:Lcom/android/server/am/TaskAccessInfo;
    iget v2, v0, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    if-gtz v2, :cond_2

    .line 5155
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->lastThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 5157
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    iget v3, v0, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskAccessInfo$SubTask;

    iget-object v2, v2, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v2, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public haltActivityResuming(I)Z
    .locals 5
    .parameter "timeout"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5491
    if-gez p1, :cond_0

    .line 5512
    :goto_0
    return v1

    .line 5495
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHaltActivityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5496
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mHaltActivity:Z

    if-eqz v4, :cond_1

    .line 5497
    monitor-exit v3

    goto :goto_0

    .line 5502
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5500
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mHaltActivity:Z

    .line 5502
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5504
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5506
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xbb8

    if-le p1, v1, :cond_2

    .line 5507
    const/16 p1, 0xbb8

    .line 5510
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v2

    .line 5512
    goto :goto_0
.end method

.method final indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .parameter "r"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final indexOfTokenLocked(Landroid/os/IBinder;)I
    .locals 2
    .parameter "token"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .parameter "token"

    .prologue
    .line 567
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 568
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-object v0

    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final moveHomeToFrontFromLaunchLocked(I)V
    .locals 2
    .parameter "launchFlags"

    .prologue
    const v1, 0x10004000

    .line 3112
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    .line 3117
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontLocked()V

    .line 3119
    :cond_0
    return-void
.end method

.method final moveHomeToFrontLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4916
    const/4 v0, 0x0

    .line 4917
    .local v0, homeTask:Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 4918
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4919
    .local v1, hr:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_2

    .line 4920
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4924
    .end local v1           #hr:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v0, :cond_1

    .line 4925
    invoke-virtual {p0, v0, v4, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 4927
    :cond_1
    return-void

    .line 4917
    .restart local v1       #hr:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method final moveTaskToBackLocked(ILcom/android/server/am/ActivityRecord;)Z
    .locals 12
    .parameter "task"
    .parameter "reason"

    .prologue
    .line 5051
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveTaskToBack: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5056
    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v9, :cond_1

    .line 5057
    const/4 v9, 0x0

    invoke-virtual {p0, v9, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 5058
    .local v6, next:Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_0

    .line 5059
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 5061
    :cond_0
    if-eqz v6, :cond_1

    .line 5063
    const/4 v4, 0x1

    .line 5065
    .local v4, moveOK:Z
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 5069
    :goto_0
    if-nez v4, :cond_1

    .line 5070
    const/4 v9, 0x0

    .line 5129
    .end local v4           #moveOK:Z
    .end local v6           #next:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return v9

    .line 5066
    .restart local v4       #moveOK:Z
    .restart local v6       #next:Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v2

    .line 5067
    .local v2, e:Landroid/os/RemoteException;
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_0

    .line 5075
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #moveOK:Z
    .end local v6           #next:Lcom/android/server/am/ActivityRecord;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5077
    .local v5, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    sget-boolean v9, Lcom/android/server/am/ActivityStack;->DEBUG_TRANSITION:Z

    if-eqz v9, :cond_2

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Prepare to back transition: task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5081
    .local v0, N:I
    const/4 v1, 0x0

    .line 5082
    .local v1, bottom:I
    const/4 v7, 0x0

    .line 5086
    .local v7, pos:I
    :goto_2
    if-ge v7, v0, :cond_8

    .line 5087
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 5088
    .local v8, r:Lcom/android/server/am/ActivityRecord;
    sget-boolean v9, Lcom/android/server/am/ActivityStack;->localLOGV:Z

    if-eqz v9, :cond_3

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "At "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ckp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5090
    :cond_3
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, p1, :cond_7

    .line 5091
    sget-boolean v9, Lcom/android/server/am/ActivityStack;->localLOGV:Z

    if-eqz v9, :cond_4

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing and adding at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5092
    :cond_4
    sget-boolean v9, Lcom/android/server/am/ActivityStack;->DEBUG_ADD_REMOVE:Z

    if-eqz v9, :cond_5

    .line 5093
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5094
    .local v3, here:Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 5095
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing and adding activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to stack at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5098
    .end local v3           #here:Ljava/lang/RuntimeException;
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5099
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5101
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v9, :cond_6

    .line 5102
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 5105
    :cond_6
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5106
    add-int/lit8 v1, v1, 0x1

    .line 5108
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 5109
    goto/16 :goto_2

    .line 5111
    .end local v8           #r:Lcom/android/server/am/ActivityRecord;
    :cond_8
    if-eqz p2, :cond_b

    iget-object v9, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_b

    .line 5113
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5115
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 5116
    .restart local v8       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_9

    .line 5117
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5123
    .end local v8           #r:Lcom/android/server/am/ActivityRecord;
    :cond_9
    :goto_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 5124
    sget-boolean v9, Lcom/android/server/am/ActivityStack;->VALIDATE_TOKENS:Z

    if-eqz v9, :cond_a

    .line 5125
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->validateAppTokensLocked()V

    .line 5128
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 5129
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 5120
    :cond_b
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v10, 0x200b

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V
    .locals 12
    .parameter "tr"
    .parameter "reason"
    .parameter "options"

    .prologue
    const/high16 v11, 0x1

    const/16 v10, 0x100a

    const/4 v9, 0x0

    .line 4942
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v6, :cond_0

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "moveTaskToFront: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4944
    :cond_0
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v6, :cond_1

    .line 4945
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACT-moveTaskToFront: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4948
    :cond_1
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 4949
    .local v4, task:I
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 4951
    .local v5, top:I
    if-ltz v5, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, v4, :cond_5

    .line 4953
    :cond_2
    if-eqz p2, :cond_4

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v6, v11

    if-eqz v6, :cond_4

    .line 4955
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 5033
    :cond_3
    :goto_0
    return-void

    .line 4957
    :cond_4
    invoke-virtual {p0, v10, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4962
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4966
    .local v1, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 4967
    move v2, v5

    .line 4971
    .local v2, pos:I
    :goto_1
    if-ltz v2, :cond_b

    .line 4972
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4973
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->localLOGV:Z

    if-eqz v6, :cond_6

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "At "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ckp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4975
    :cond_6
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, v4, :cond_a

    .line 4976
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->localLOGV:Z

    if-eqz v6, :cond_7

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing and adding at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4977
    :cond_7
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_ADD_REMOVE:Z

    if-eqz v6, :cond_8

    .line 4978
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v6, "here"

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4979
    .local v0, here:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 4980
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing and adding activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to stack at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4982
    .end local v0           #here:Ljava/lang/RuntimeException;
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4983
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4985
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v6, :cond_9

    .line 4986
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 4989
    :cond_9
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4990
    add-int/lit8 v5, v5, -0x1

    .line 4992
    :cond_a
    add-int/lit8 v2, v2, -0x1

    .line 4993
    goto/16 :goto_1

    .line 4995
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_b
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->DEBUG_TRANSITION:Z

    if-eqz v6, :cond_c

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prepare to front transition: task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4997
    :cond_c
    if-eqz p2, :cond_f

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v6, v11

    if-eqz v6, :cond_f

    .line 4999
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v9, v9}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5001
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 5002
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_d

    .line 5003
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5005
    :cond_d
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 5010
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 5011
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->VALIDATE_TOKENS:Z

    if-eqz v6, :cond_e

    .line 5012
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->validateAppTokensLocked()V

    .line 5015
    :cond_e
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 5028
    const/16 v6, 0x7532

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5030
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v6, :cond_3

    .line 5031
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACT-AM_TASK_TO_FRONT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5007
    :cond_f
    invoke-virtual {p0, v10, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_2
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 9
    .parameter "remove"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3988
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3989
    .local v0, N:I
    if-gtz v0, :cond_1

    const/4 v4, 0x0

    .line 4026
    :cond_0
    return-object v4

    .line 3991
    :cond_1
    const/4 v4, 0x0

    .line 3993
    .local v4, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v6, :cond_9

    const/4 v2, 0x1

    .line 3996
    .local v2, nowVisible:Z
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 3997
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3998
    .local v3, s:Lcom/android/server/am/ActivityRecord;
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->localLOGV:Z

    if-eqz v6, :cond_2

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stopping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": nowVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " waitingVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " finishing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    :cond_2
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 4002
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4003
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 4004
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_4

    .line 4010
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->localLOGV:Z

    if-eqz v6, :cond_3

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Before stopping, can hide: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4014
    :cond_4
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_5
    if-eqz p1, :cond_8

    .line 4015
    sget-boolean v6, Lcom/android/server/am/ActivityStack;->localLOGV:Z

    if-eqz v6, :cond_6

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ready to stop: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4016
    :cond_6
    if-nez v4, :cond_7

    .line 4017
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4019
    .restart local v4       #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_7
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4020
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4021
    add-int/lit8 v0, v0, -0x1

    .line 4022
    add-int/lit8 v1, v1, -0x1

    .line 3996
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .end local v1           #i:I
    .end local v2           #nowVisible:Z
    .end local v3           #s:Lcom/android/server/am/ActivityRecord;
    :cond_9
    move v2, v5

    .line 3993
    goto/16 :goto_0
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 22
    .parameter "r"
    .parameter "app"
    .parameter "andResume"
    .parameter "checkConfig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 706
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 710
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 718
    if-eqz p4, :cond_0

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v18

    .line 722
    .local v18, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 725
    .end local v18           #config:Landroid/content/res/Configuration;
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 726
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 728
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->localLOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACT-Launching: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 731
    .local v20, idx:I
    if-gez v20, :cond_2

    .line 732
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 737
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_4

    .line 738
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :catch_0
    move-exception v19

    .line 830
    .local v19, e:Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v2, :cond_17

    .line 833
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second failure launching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", giving up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 837
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "2nd-crash"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 839
    const/4 v2, 0x0

    .line 904
    .end local v19           #e:Landroid/os/RemoteException;
    :goto_1
    return v2

    .line 719
    .end local v20           #idx:I
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 740
    .restart local v20       #idx:I
    :cond_4
    const/4 v10, 0x0

    .line 741
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v11, 0x0

    .line 742
    .local v11, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_5

    .line 743
    :try_start_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 744
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 746
    :cond_5
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_6

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launching: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icicle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with results="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newIntents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " andResume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_6
    if-eqz p3, :cond_7

    .line 751
    const/16 v2, 0x7536

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 755
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v2, :cond_7

    .line 756
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACT-AM_RESTART_ACTIVITY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Task:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_7
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_8

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 762
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 763
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 764
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 765
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 767
    const/4 v14, 0x0

    .line 768
    .local v14, profileFile:Ljava/lang/String;
    const/4 v15, 0x0

    .line 769
    .local v15, profileFd:Landroid/os/ParcelFileDescriptor;
    const/16 v16, 0x0

    .line 770
    .local v16, profileAutoStop:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_a

    .line 772
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move/from16 v16, v0

    .line 780
    :cond_a
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_b

    .line 782
    :try_start_2
    const-class v2, Lcom/mediatek/common/amsplus/IAmsPlus;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/common/amsplus/IAmsPlus;

    .line 783
    .local v17, ap:Lcom/mediatek/common/amsplus/IAmsPlus;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->convertLaunchRecord(Lcom/android/server/am/ActivityRecord;)Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/mediatek/common/amsplus/IAmsPlus;->beforeScheduleLaunchActivity(Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 790
    .end local v17           #ap:Lcom/mediatek/common/amsplus/IAmsPlus;
    :cond_b
    :goto_2
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 791
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 792
    if-eqz v15, :cond_c

    .line 794
    :try_start_4
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v15

    .line 800
    :cond_c
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "ActivityManager"

    const-string v4, "scheduleLaunchActivity -> ActivityThread"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    if-nez p3, :cond_16

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v13

    invoke-interface/range {v2 .. v16}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 809
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    .line 814
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_d

    .line 817
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new heavy weight process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when already running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 824
    .local v21, msg:Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 853
    .end local v21           #msg:Landroid/os/Message;
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 854
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 855
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " being launched, but already in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_f
    if-eqz p3, :cond_18

    .line 862
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 863
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v2, :cond_10

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to RESUMED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (starting new instance)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mCurActivityPkName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 867
    const/16 v2, 0x71

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/LogPower;->push(ILjava/lang/String;)I

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mRuningBackground:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 869
    const/16 v2, 0x72

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mCurActivityPkName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/LogPower;->push(ILjava/lang/String;)I

    .line 870
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mRuningBackground:Ljava/lang/Boolean;

    .line 872
    :cond_11
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mCurActivityPkName:Ljava/lang/String;

    .line 875
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 876
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 877
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 878
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 879
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_13

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 882
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 884
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_SAVED_STATE:Z

    if-eqz v2, :cond_14

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launch completed; removing icicle of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_15

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 904
    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 784
    :catch_1
    move-exception v19

    .line 785
    .local v19, e:Ljava/lang/Exception;
    :try_start_6
    const-string v2, "ActivityManager"

    const-string v3, "[LTK] Exception thrown during beforeScheduleLaunchActivity failed:"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 795
    .end local v19           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v19

    .line 796
    .local v19, e:Ljava/io/IOException;
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 802
    .end local v19           #e:Ljava/io/IOException;
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 844
    .end local v10           #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11           #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #profileAutoStop:Z
    .local v19, e:Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 849
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 850
    throw v19

    .line 890
    .end local v19           #e:Landroid/os/RemoteException;
    .restart local v10       #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11       #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v14       #profileFile:Ljava/lang/String;
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    .restart local v16       #profileAutoStop:Z
    :cond_18
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v2, :cond_19

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to STOPPED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (starting in stopped state)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_19
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 893
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_5
.end method

.method final removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 4567
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4568
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 4569
    sget-boolean v1, Lcom/android/server/am/ActivityStack;->DEBUG_ADD_REMOVE:Z

    if-eqz v1, :cond_0

    .line 4570
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4571
    .local v0, here:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 4572
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from stack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    .end local v0           #here:Ljava/lang/RuntimeException;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4576
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v1, :cond_1

    .line 4577
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 4580
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 4581
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4582
    sget-boolean v1, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving to DESTROYED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (removed from history)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4584
    :cond_2
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4585
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4586
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 4587
    sget-boolean v1, Lcom/android/server/am/ActivityStack;->VALIDATE_TOKENS:Z

    if-eqz v1, :cond_3

    .line 4588
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->validateAppTokensLocked()V

    .line 4590
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4591
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 4592
    return-void
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 13
    .parameter "app"

    .prologue
    .line 4809
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v10, "mLRUActivities"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4810
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v10, "mStoppingActivities"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4811
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v10, "mGoingToSleepActivities"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4812
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v10, "mWaitingVisibleActivities"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4814
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v10, "mFinishingActivities"

    invoke-direct {p0, v9, p1, v10}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4816
    const/4 v1, 0x0

    .line 4819
    .local v1, hasVisibleActivities:Z
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4820
    .local v3, i:I
    sget-boolean v9, Lcom/android/server/am/ActivityStack;->DEBUG_CLEANUP:Z

    if-eqz v9, :cond_0

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from history with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " entries"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    :cond_0
    :goto_0
    if-lez v3, :cond_12

    .line 4823
    add-int/lit8 v3, v3, -0x1

    .line 4824
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 4825
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    sget-boolean v9, Lcom/android/server/am/ActivityStack;->DEBUG_CLEANUP:Z

    if-eqz v9, :cond_1

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Record #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": app="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4827
    :cond_1
    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v9, p1, :cond_e

    .line 4829
    iget-boolean v9, v6, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v9, :cond_2

    iget-boolean v9, v6, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v9, :cond_3

    :cond_2
    iget-boolean v9, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_8

    :cond_3
    const/4 v7, 0x1

    .line 4831
    .local v7, removeIfNoState:Z
    :goto_1
    if-eqz v7, :cond_9

    iget-boolean v9, p1, Lcom/android/server/am/ProcessRecord;->killedLTK:Z

    if-nez v9, :cond_9

    const/4 v7, 0x1

    .line 4834
    :goto_2
    if-eqz v7, :cond_a

    .line 4835
    sget-boolean v9, Lcom/android/server/am/ActivityStack;->DEBUG_ADD_REMOVE:Z

    if-nez v9, :cond_4

    sget-boolean v9, Lcom/android/server/am/ActivityStack;->DEBUG_CLEANUP:Z

    if-eqz v9, :cond_5

    .line 4836
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4837
    .local v2, here:Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 4838
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from stack at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": haveState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v6, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " stateNotNeeded="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v6, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " finishing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4844
    .end local v2           #here:Ljava/lang/RuntimeException;
    :cond_5
    iget-boolean v9, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_6

    .line 4845
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Force removing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": app died, no saved state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4846
    const/16 v9, 0x7531

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, v6, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "proc died without state saved"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4851
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4872
    :cond_7
    :goto_3
    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v6, v10, v11}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_0

    .line 4829
    .end local v7           #removeIfNoState:Z
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 4831
    .restart local v7       #removeIfNoState:Z
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 4857
    :cond_a
    sget-boolean v9, Lcom/android/server/am/ActivityStack;->DEBUG_PROCESSES:Z

    if-eqz v9, :cond_b

    const-string v9, "ActivityManager"

    const-string v10, "Keeping entry, setting app to null"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4860
    :cond_b
    iget-boolean v9, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_c

    .line 4861
    const/4 v1, 0x1

    .line 4863
    :cond_c
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4864
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4865
    iget-boolean v9, v6, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v9, :cond_7

    .line 4866
    sget-boolean v9, Lcom/android/server/am/ActivityStack;->DEBUG_SAVED_STATE:Z

    if-eqz v9, :cond_d

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App died, clearing saved state of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    :cond_d
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    goto :goto_3

    .line 4878
    .end local v7           #removeIfNoState:Z
    :cond_e
    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v9, :cond_0

    iget-boolean v9, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_0

    iget-boolean v9, v6, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-nez v9, :cond_0

    .line 4879
    const-string v9, "ActivityManager"

    const-string v10, "Removing this entry?!"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4881
    const/4 v0, 0x0

    .line 4882
    .local v0, found:Z
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 4883
    .local v8, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4884
    .local v5, p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 4885
    const/4 v0, 0x1

    .line 4889
    .end local v5           #p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_10
    if-nez v0, :cond_0

    .line 4892
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing this entry!  haveState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v6, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " stateNotNeeded="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v6, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4895
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 4896
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4897
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 4898
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 4899
    sget-boolean v9, Lcom/android/server/am/ActivityStack;->VALIDATE_TOKENS:Z

    if-eqz v9, :cond_11

    .line 4900
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->validateAppTokensLocked()V

    .line 4902
    :cond_11
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    goto/16 :goto_0

    .line 4908
    .end local v0           #found:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #r:Lcom/android/server/am/ActivityRecord;
    .end local v8           #runningList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_12
    return v1
.end method

.method public removeTaskActivitiesLocked(IIZ)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .parameter "taskId"
    .parameter "subTaskIndex"
    .parameter "taskRequired"

    .prologue
    const/4 v2, 0x0

    .line 5163
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 5164
    .local v0, info:Lcom/android/server/am/TaskAccessInfo;
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_1

    .line 5165
    if-eqz p3, :cond_0

    .line 5166
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeTaskLocked: unknown taskId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    :cond_0
    :goto_0
    return-object v2

    .line 5171
    :cond_1
    if-gez p2, :cond_2

    .line 5173
    iget v2, v0, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 5174
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 5177
    :cond_2
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_3

    .line 5178
    if-eqz p3, :cond_0

    .line 5179
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeTaskLocked: unknown subTaskIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5185
    :cond_3
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 5186
    .local v1, subtask:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget v2, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 5187
    iget-object v2, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    goto :goto_0
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 5
    .parameter "timeout"
    .parameter "r"
    .parameter "thisTime"
    .parameter "totalTime"

    .prologue
    .line 3872
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3873
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 3874
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 3875
    if-eqz p2, :cond_0

    .line 3876
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 3878
    :cond_0
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 3879
    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 3872
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3881
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3882
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .parameter "r"

    .prologue
    const/4 v6, 0x0

    .line 3885
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3886
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 3887
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean v6, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 3888
    if-eqz p1, :cond_0

    .line 3889
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 3891
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 3892
    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 3885
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3894
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3896
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v2, :cond_2

    .line 3897
    iput-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3898
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 3900
    :cond_2
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 10
    .parameter "token"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"
    .parameter "oomAdj"

    .prologue
    .line 4212
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 4213
    .local v2, index:I
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_RESULTS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finishing activity @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4217
    :cond_1
    if-gez v2, :cond_2

    .line 4218
    const/4 v0, 0x0

    .line 4247
    :goto_0
    return v0

    .line 4220
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4223
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    const-string v0, "app-request"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.internal.app.ChooserActivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4226
    if-lez v2, :cond_3

    .line 4227
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 4228
    .local v7, prevAct:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v3, :cond_3

    .line 4231
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 4232
    .local v9, topIndex:I
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 4234
    .local v8, topAct:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v3, :cond_3

    iget-wide v3, v7, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v3, :cond_3

    .line 4237
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set previous process="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4238
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 4239
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v3, v7, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v3, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .end local v7           #prevAct:Lcom/android/server/am/ActivityRecord;
    .end local v8           #topAct:Lcom/android/server/am/ActivityRecord;
    .end local v9           #topIndex:I
    :cond_3
    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 4246
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4247
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "userId"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 3585
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10400

    invoke-interface {v0, p1, p2, v1, p6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 3590
    .local v8, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_3

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3595
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    .local v6, aInfo:Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v6, :cond_2

    .line 3600
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3604
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 3605
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3606
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 3610
    :cond_0
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    .line 3611
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3612
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 3616
    :cond_1
    if-eqz p4, :cond_2

    .line 3617
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3618
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_4

    :goto_1
    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 3624
    :cond_2
    return-object v6

    .line 3590
    .end local v6           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v8       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 3591
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    .line 3592
    .local v7, e:Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .end local v7           #e:Landroid/os/RemoteException;
    :cond_4
    move v5, v3

    .line 3618
    goto :goto_1
.end method

.method public restoreActivityResuming()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5523
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHaltActivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5524
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mHaltActivity:Z

    if-nez v3, :cond_0

    .line 5525
    monitor-exit v2

    .line 5537
    :goto_0
    return v1

    .line 5528
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mHaltActivity:Z

    .line 5530
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5532
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5534
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5535
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5537
    const/4 v1, 0x1

    goto :goto_0

    .line 5530
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .parameter "prev"

    .prologue
    .line 1768
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 25
    .parameter "prev"
    .parameter "options"

    .prologue
    .line 1773
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    .line 1777
    .local v20, next:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    move/from16 v24, v0

    .line 1778
    .local v24, userLeaving:Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 1780
    if-nez v20, :cond_1

    .line 1783
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_1

    .line 1784
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1789
    invoke-static {}, Lcom/android/server/am/PowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1790
    const-string v2, "ActivityManager"

    const-string v3, "Skip to resume home activity!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const/4 v2, 0x0

    .line 2190
    :goto_0
    return v2

    .line 1794
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v2

    goto :goto_0

    .line 1798
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_2

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_2

    .line 1804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1806
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1807
    const/4 v2, 0x0

    goto :goto_0

    .line 1811
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHaltActivityLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1812
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mHaltActivity:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->checkIfBlockResumeTop(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1813
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACT-Because running the window animation, can\'t resumeTopActivityLocked  mAnimationPrev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    .line 1816
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mAnimationOptions:Landroid/os/Bundle;

    .line 1817
    const/4 v2, 0x0

    monitor-exit v3

    goto/16 :goto_0

    .line 1819
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_6

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_5

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_5

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_6

    .line 1831
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1833
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1834
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip resumeTopActivityLocked, next = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1841
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1842
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping resume of top activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is stopped"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1849
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1851
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1854
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 1856
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_8

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resuming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_b

    .line 1861
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_PAUSE:Z

    if-eqz v2, :cond_a

    :cond_9
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip resume: pausing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1896
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsPerfBoostEnable:Z

    if-nez v2, :cond_c

    .line 1897
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/PerfService;->nativePerfBoostEnable(I)I

    .line 1898
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsPerfBoostEnable:Z

    .line 1904
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_f

    .line 1905
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_d

    const-string v2, "ActivityManager"

    const-string v3, "Skip resume: need to start pausing"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_d
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_e

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_e

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1915
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 1916
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1922
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    .line 1923
    .local v17, last:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-eqz v2, :cond_12

    if-eqz v17, :cond_12

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_12

    .line 1924
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-nez v2, :cond_10

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_12

    .line 1926
    :cond_10
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v2, :cond_11

    .line 1927
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no-history finish of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on new resume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_11
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "no-history"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1934
    :cond_12
    if-eqz p1, :cond_13

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_13

    .line 1935
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v2, :cond_20

    if-eqz v20, :cond_20

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v2, :cond_20

    .line 1936
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_13

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resuming top, waiting visible to hide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :cond_13
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1978
    :goto_2
    const/16 v22, 0x0

    .line 1979
    .local v22, noAnim:Z
    if-eqz p1, :cond_2a

    .line 1980
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_26

    .line 1981
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_TRANSITION:Z

    if-eqz v2, :cond_14

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare close transition: prev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1991
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2022
    :cond_15
    :goto_4
    if-nez v22, :cond_2d

    .line 2023
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .line 2028
    :goto_5
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_37

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_37

    .line 2029
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_16

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume running: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2035
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    .line 2038
    .local v18, lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v19, v0

    .line 2040
    .local v19, lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2042
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v2, :cond_17

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to RESUMED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (in existing)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :cond_17
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mCurActivityPkName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 2046
    const/16 v2, 0x71

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/LogPower;->push(ILjava/lang/String;)I

    .line 2047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mRuningBackground:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2048
    const/16 v2, 0x72

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mCurActivityPkName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/LogPower;->push(ILjava/lang/String;)I

    .line 2049
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mRuningBackground:Ljava/lang/Boolean;

    .line 2051
    :cond_18
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mCurActivityPkName:Ljava/lang/String;

    .line 2054
    :cond_19
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2055
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 2056
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_1a

    .line 2057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2059
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 2060
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2064
    const/16 v23, 0x0

    .line 2065
    .local v23, updated:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_1c

    .line 2066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2067
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_6
    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v15

    .line 2070
    .local v15, config:Landroid/content/res/Configuration;
    if-eqz v15, :cond_1b

    .line 2071
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2073
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v15, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v23

    .line 2074
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2076
    .end local v15           #config:Landroid/content/res/Configuration;
    :cond_1c
    if-nez v23, :cond_2f

    .line 2082
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 2083
    .local v21, nextNext:Lcom/android/server/am/ActivityRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_1d

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity config changed during resume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new next: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :cond_1d
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1e

    .line 2088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2090
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_1f

    .line 2091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2093
    :cond_1f
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2096
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1949
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v21           #nextNext:Lcom/android/server/am/ActivityRecord;
    .end local v22           #noAnim:Z
    .end local v23           #updated:Z
    :cond_20
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_22

    .line 1950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1951
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_13

    const-string v3, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not waiting for visible to hide: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", waitingVisible="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_21

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", nowVisible="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_21
    const/4 v2, 0x0

    goto :goto_7

    .line 1956
    :cond_22
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_13

    const-string v3, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous already visible but still waiting to hide: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", waitingVisible="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_23

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", nowVisible="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_23
    const/4 v2, 0x0

    goto :goto_8

    .line 1970
    :catch_0
    move-exception v16

    .line 1971
    .local v16, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed trying to unstop package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1987
    .end local v16           #e:Ljava/lang/IllegalArgumentException;
    .restart local v22       #noAnim:Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v4, :cond_25

    const/16 v2, 0x2007

    :goto_9
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_3

    :cond_25
    const/16 v2, 0x2009

    goto :goto_9

    .line 1994
    :cond_26
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_TRANSITION:Z

    if-eqz v2, :cond_27

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare open transition: prev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1997
    const/16 v22, 0x1

    .line 1998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    .line 2001
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v4, :cond_29

    const/16 v2, 0x1006

    :goto_a
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    :cond_29
    const/16 v2, 0x1008

    goto :goto_a

    .line 2010
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_15

    .line 2011
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_TRANSITION:Z

    if-eqz v2, :cond_2b

    const-string v2, "ActivityManager"

    const-string v3, "Prepare open transition: no previous"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2014
    const/16 v22, 0x1

    .line 2015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    .line 2018
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v3, 0x1006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    .line 2025
    :cond_2d
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_5

    .line 2067
    .restart local v18       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v19       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v23       #updated:Z
    :cond_2e
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 2074
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 2101
    :cond_2f
    :try_start_5
    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2102
    .local v14, a:Ljava/util/ArrayList;
    if-eqz v14, :cond_31

    .line 2103
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2104
    .local v13, N:I
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_31

    if-lez v13, :cond_31

    .line 2105
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_RESULTS:Z

    if-eqz v2, :cond_30

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering results to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :cond_30
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3, v14}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2112
    .end local v13           #N:I
    :cond_31
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v2, :cond_32

    .line 2113
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 2116
    :cond_32
    const/16 v2, 0x7537

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2120
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v2, :cond_33

    .line 2121
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACT-AM_RESUME_ACTIVITY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " task:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :cond_33
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2125
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2126
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2127
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 2130
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2159
    const/4 v2, 0x1

    :try_start_6
    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2160
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2169
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2190
    .end local v14           #a:Ljava/util/ArrayList;
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v23           #updated:Z
    :goto_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2132
    .restart local v18       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v19       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v23       #updated:Z
    :catch_1
    move-exception v16

    .line 2134
    .local v16, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_STATES:Z

    if-eqz v2, :cond_34

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume failed; resetting state to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    :cond_34
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2137
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2138
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting because process died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v2, :cond_36

    .line 2140
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2152
    :cond_35
    :goto_c
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2153
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2142
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_35

    .line 2143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_c

    .line 2161
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v14       #a:Ljava/util/ArrayList;
    :catch_2
    move-exception v16

    .line 2164
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown during resume of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2165
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "resume-exception"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2167
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2173
    .end local v14           #a:Ljava/util/ArrayList;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v23           #updated:Z
    :cond_37
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v2, :cond_39

    .line 2174
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2187
    :cond_38
    :goto_d
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_b

    .line 2177
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    .line 2185
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_38

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1969
    .end local v22           #noAnim:Z
    :catch_3
    move-exception v2

    goto/16 :goto_2
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .locals 3
    .parameter "owner"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 4610
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4611
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4612
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4613
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .prologue
    .line 4030
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4031
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4032
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4033
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 1171
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v4, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-object v3

    .line 1175
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1176
    .local v1, res:Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 1177
    .local v2, w:I
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 1178
    .local v0, h:I
    if-gez v2, :cond_2

    .line 1179
    const v4, 0x1050002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 1181
    const v4, 0x1050001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 1185
    :cond_2
    if-lez v2, :cond_0

    .line 1186
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 8
    .parameter "callingUid"
    .parameter "r"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3905
    if-lez p1, :cond_0

    .line 3906
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p6, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 3910
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send activity result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : who="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 3915
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3916
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3918
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3926
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_0
    return-void

    .line 3920
    :catch_0
    move-exception v6

    .line 3921
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3925
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method final showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 655
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 656
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 657
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v1, v1, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 658
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 659
    return-void
.end method

.method final startActivities(Landroid/app/IApplicationThread;I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 23
    .parameter "caller"
    .parameter "callingUid"
    .parameter "intents"
    .parameter "resolvedTypes"
    .parameter "resultTo"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 3794
    if-nez p3, :cond_0

    .line 3795
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "intents is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3797
    :cond_0
    if-nez p4, :cond_1

    .line 3798
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "resolvedTypes is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3800
    :cond_1
    move-object/from16 v0, p3

    array-length v1, v0

    move-object/from16 v0, p4

    array-length v3, v0

    if-eq v1, v3, :cond_2

    .line 3801
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "intents are length different than resolvedTypes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3804
    :cond_2
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    .line 3807
    .local v16, outActivity:[Lcom/android/server/am/ActivityRecord;
    if-ltz p2, :cond_3

    .line 3808
    const/4 v11, -0x1

    .line 3815
    .local v11, callingPid:I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 3817
    .local v19, origId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3819
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    :try_start_1
    move-object/from16 v0, p3

    array-length v1, v0

    move/from16 v0, v17

    if-ge v0, v1, :cond_c

    .line 3820
    aget-object v18, p3, v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3821
    .local v18, intent:Landroid/content/Intent;
    if-nez v18, :cond_5

    move-object/from16 v2, v18

    .line 3819
    .end local v18           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 3809
    .end local v2           #intent:Landroid/content/Intent;
    .end local v11           #callingPid:I
    .end local v17           #i:I
    .end local v19           #origId:J
    :cond_3
    if-nez p1, :cond_4

    .line 3810
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 3811
    .restart local v11       #callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 3813
    .end local v11           #callingPid:I
    :cond_4
    const/16 p2, -0x1

    move/from16 v11, p2

    .restart local v11       #callingPid:I
    goto :goto_0

    .line 3826
    .restart local v17       #i:I
    .restart local v18       #intent:Landroid/content/Intent;
    .restart local v19       #origId:J
    :cond_5
    if-eqz v18, :cond_6

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3827
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3862
    .end local v18           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3864
    .end local v17           #i:I
    :catchall_1
    move-exception v1

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 3830
    .restart local v17       #i:I
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v15, 0x1

    .line 3833
    .local v15, componentSpecified:Z
    :goto_3
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3836
    .end local v18           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    aget-object v3, p4, v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 3839
    .local v7, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p7

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 3841
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_8

    if-eqz v7, :cond_8

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 3843
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3830
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v15           #componentSpecified:Z
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 3848
    .end local v18           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v15       #componentSpecified:Z
    :cond_8
    if-eqz p6, :cond_9

    move-object/from16 v0, p3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_9

    .line 3849
    move-object/from16 v14, p6

    .line 3853
    .local v14, theseOptions:Landroid/os/Bundle;
    :goto_4
    aget-object v6, p4, v17

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v8, p5

    move/from16 v12, p2

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v21

    .line 3856
    .local v21, res:I
    if-gez v21, :cond_a

    .line 3857
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3864
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3867
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v14           #theseOptions:Landroid/os/Bundle;
    .end local v15           #componentSpecified:Z
    .end local v21           #res:I
    :goto_5
    return v21

    .line 3851
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v15       #componentSpecified:Z
    :cond_9
    const/4 v14, 0x0

    .restart local v14       #theseOptions:Landroid/os/Bundle;
    goto :goto_4

    .line 3860
    .restart local v21       #res:I
    :cond_a
    const/4 v1, 0x0

    :try_start_5
    aget-object v1, v16, v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v16, v1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p5, v0

    :goto_6
    goto/16 :goto_2

    :cond_b
    const/16 p5, 0x0

    goto :goto_6

    .line 3862
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v14           #theseOptions:Landroid/os/Bundle;
    .end local v15           #componentSpecified:Z
    .end local v21           #res:I
    :cond_c
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3864
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3867
    const/16 v21, 0x0

    goto :goto_5
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .locals 34
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "aInfo"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "callingPid"
    .parameter "callingUid"
    .parameter "startFlags"
    .parameter "options"
    .parameter "componentSpecified"
    .parameter "outActivity"

    .prologue
    .line 2904
    const/16 v24, 0x0

    .line 2906
    .local v24, err:I
    const/16 v20, 0x0

    .line 2907
    .local v20, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 2908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v20

    .line 2909
    if-eqz v20, :cond_8

    .line 2910
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p8, v0

    .line 2911
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p9, v0

    .line 2920
    :cond_0
    :goto_0
    if-nez v24, :cond_4

    .line 2921
    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v32

    .line 2922
    .local v32, userId:I
    :goto_1
    const-string v4, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "START u"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " {"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "} from pid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v20, :cond_a

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    .line 2926
    .local v21, cmp:Landroid/content/ComponentName;
    const-string v31, ""

    .line 2927
    .local v31, strPkg:Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 2928
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v31

    .line 2931
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mCurActivityPkName:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mCurActivityPkName:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2933
    :cond_2
    const/16 v3, 0x8b

    move-object/from16 v0, v31

    invoke-static {v3, v0}, Landroid/util/LogPower;->push(ILjava/lang/String;)I

    .line 2936
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2937
    const/16 v3, 0x7f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v3, v0, v4}, Landroid/util/LogPower;->push(ILjava/lang/String;Ljava/lang/String;)I

    .line 2942
    .end local v21           #cmp:Landroid/content/ComponentName;
    .end local v31           #strPkg:Ljava/lang/String;
    .end local v32           #userId:I
    :cond_4
    const/16 v29, 0x0

    .line 2943
    .local v29, sourceRecord:Lcom/android/server/am/ActivityRecord;
    const/4 v5, 0x0

    .line 2944
    .local v5, resultRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz p5, :cond_6

    .line 2945
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v25

    .line 2946
    .local v25, index:I
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_RESULTS:Z

    if-eqz v3, :cond_5

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Will send result to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " (index "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    :cond_5
    if-ltz v25, :cond_6

    .line 2949
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    .end local v29           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    check-cast v29, Lcom/android/server/am/ActivityRecord;

    .line 2950
    .restart local v29       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    if-ltz p7, :cond_6

    move-object/from16 v0, v29

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_6

    .line 2951
    move-object/from16 v5, v29

    .line 2956
    .end local v25           #index:I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v26

    .line 2959
    .local v26, launchFlags:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiLauncher:Z

    if-nez v3, :cond_7

    .line 2960
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android/com.android.internal.app.ResolverActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.intent.category.HOME"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2962
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiLauncher:Z

    .line 2966
    :cond_7
    const/high16 v3, 0x200

    and-int v3, v3, v26

    if-eqz v3, :cond_c

    if-eqz v29, :cond_c

    .line 2970
    if-ltz p7, :cond_b

    .line 2971
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2972
    const/4 v3, -0x3

    .line 3108
    :goto_3
    return v3

    .line 2913
    .end local v5           #resultRecord:Lcom/android/server/am/ActivityRecord;
    .end local v26           #launchFlags:I
    .end local v29           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_8
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " (pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") when starting: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    const/16 v24, -0x4

    goto/16 :goto_0

    .line 2921
    :cond_9
    const/16 v32, 0x0

    goto/16 :goto_1

    .restart local v32       #userId:I
    :cond_a
    move/from16 v3, p8

    .line 2922
    goto/16 :goto_2

    .line 2974
    .end local v32           #userId:I
    .restart local v5       #resultRecord:Lcom/android/server/am/ActivityRecord;
    .restart local v26       #launchFlags:I
    .restart local v29       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_b
    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2975
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p6, v0

    .line 2976
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p7, v0

    .line 2977
    const/4 v3, 0x0

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2978
    if-eqz v5, :cond_c

    .line 2979
    move-object/from16 v0, v29

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 2984
    :cond_c
    if-nez v24, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_d

    .line 2987
    const/16 v24, -0x1

    .line 2990
    :cond_d
    if-nez v24, :cond_e

    if-nez p4, :cond_e

    .line 2993
    const/16 v24, -0x2

    .line 2996
    :cond_e
    if-eqz v24, :cond_10

    .line 2997
    if-eqz v5, :cond_f

    .line 2998
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3002
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3003
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    move/from16 v3, v24

    .line 3004
    goto/16 :goto_3

    .line 3007
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v30

    .line 3009
    .local v30, startAnyPerm:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-boolean v11, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v22

    .line 3011
    .local v22, componentPerm:I
    if-eqz v30, :cond_13

    if-eqz v22, :cond_13

    .line 3012
    if-eqz v5, :cond_11

    .line 3013
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3017
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3019
    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_12

    .line 3020
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not exported from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 3030
    .local v27, msg:Ljava/lang/String;
    :goto_4
    const-string v3, "ActivityManager"

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    new-instance v3, Ljava/lang/SecurityException;

    move-object/from16 v0, v27

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3025
    .end local v27           #msg:Ljava/lang/String;
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .restart local v27       #msg:Ljava/lang/String;
    goto :goto_4

    .line 3034
    .end local v27           #msg:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_16

    .line 3035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v3, :cond_16

    .line 3036
    const/16 v19, 0x0

    .line 3040
    .local v19, abort:Z
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v33

    .line 3041
    .local v33, watchIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-interface {v3, v0, v4}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_15

    const/16 v19, 0x1

    .line 3047
    .end local v33           #watchIntent:Landroid/content/Intent;
    :goto_5
    if-eqz v19, :cond_16

    .line 3048
    if-eqz v5, :cond_14

    .line 3049
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3055
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3056
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3057
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 3041
    .restart local v33       #watchIntent:Landroid/content/Intent;
    :cond_15
    const/16 v19, 0x0

    goto :goto_5

    .line 3043
    .end local v33           #watchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v23

    .line 3044
    .local v23, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_5

    .line 3062
    .end local v19           #abort:Z
    .end local v23           #e:Landroid/os/RemoteException;
    :cond_16
    new-instance v6, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v8, p0

    move-object/from16 v9, v20

    move/from16 v10, p9

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v15, v5

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p12

    invoke-direct/range {v6 .. v18}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZ)V

    .line 3065
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    if-eqz p13, :cond_17

    .line 3066
    const/4 v3, 0x0

    aput-object v6, p13, v3

    .line 3069
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_1a

    .line 3070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p9

    if-eq v3, v0, :cond_19

    .line 3072
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "Activity start"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 3073
    new-instance v28, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>()V

    .line 3074
    .local v28, pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    move-object/from16 v0, v28

    iput-object v6, v0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 3075
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 3076
    move/from16 v0, p10

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->startFlags:I

    .line 3077
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3078
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3079
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3080
    const/4 v3, 0x4

    goto/16 :goto_3

    .line 3084
    .end local v28           #pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v3, :cond_1c

    .line 3090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 3095
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 3098
    :cond_1a
    const/4 v11, 0x1

    move-object/from16 v7, p0

    move-object v8, v6

    move-object/from16 v9, v29

    move/from16 v10, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I

    move-result v24

    .line 3100
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_1b

    .line 3105
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    :cond_1b
    move/from16 v3, v24

    .line 3108
    goto/16 :goto_3

    .line 3092
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_6
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 35
    .parameter "caller"
    .parameter "callingUid"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "outResult"
    .parameter "config"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 3633
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3634
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3638
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "ActivityManager"

    const-string v5, "startActivity now"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 3641
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_a

    const/16 v20, 0x1

    .line 3644
    .local v20, componentSpecified:Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p3
    .local v3, intent:Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move/from16 v8, p14

    .line 3647
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v22

    .line 3650
    .local v22, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 3652
    if-ltz p2, :cond_b

    .line 3653
    const/16 v16, -0x1

    .line 3661
    .local v16, callingPid:I
    :goto_1
    if-eqz p12, :cond_d

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 3663
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity when config will change = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v27

    .line 3668
    .local v27, origId:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_13

    if-eqz v22, :cond_13

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x1000

    and-int/2addr v2, v4

    if-eqz v2, :cond_13

    .line 3672
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 3676
    :cond_2
    move/from16 v31, v16

    .line 3677
    .local v31, realCallingPid:I
    move/from16 v7, p2

    .line 3678
    .local v7, realCallingUid:I
    if-eqz p1, :cond_3

    .line 3679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v23

    .line 3680
    .local v23, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz v23, :cond_e

    .line 3681
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v31, v0

    .line 3682
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3692
    .end local v23           #callerApp:Lcom/android/server/am/ProcessRecord;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    new-array v12, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v3, v12, v2

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v13, v2

    const/high16 v14, 0x5000

    const/4 v15, 0x0

    move/from16 v8, p14

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v33

    .line 3698
    .local v33, target:Landroid/content/IIntentSender;
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 3699
    .local v26, newIntent:Landroid/content/Intent;
    if-ltz p7, :cond_4

    .line 3701
    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3703
    :cond_4
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 3706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityRecord;

    .line 3707
    .local v25, hist:Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3709
    const-string v2, "cur_task"

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3712
    .end local v25           #hist:Lcom/android/server/am/ActivityRecord;
    :cond_5
    const-string v2, "new_app"

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3714
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3715
    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3717
    move-object/from16 p3, v26

    .line 3718
    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    const/16 p4, 0x0

    .line 3719
    const/16 p1, 0x0

    .line 3720
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 3721
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v16

    .line 3722
    const/16 v20, 0x1

    .line 3724
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10400

    move-object/from16 v0, p3

    move/from16 v1, p14

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v30

    .line 3729
    .local v30, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v30, :cond_f

    move-object/from16 v0, v30

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3730
    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .local v12, aInfo:Landroid/content/pm/ActivityInfo;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p14

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v12

    .line 3738
    .end local v7           #realCallingUid:I
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v30           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    :goto_4
    const/16 v21, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v17, p2

    move/from16 v18, p8

    move-object/from16 v19, p13

    :try_start_4
    invoke-virtual/range {v8 .. v21}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v32

    .line 3742
    .local v32, res:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_7

    .line 3747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3749
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 3750
    sget-boolean v2, Lcom/android/server/am/ActivityStack;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_6

    const-string v2, "ActivityManager"

    const-string v4, "Updating to new configuration after starting activity."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 3755
    :cond_7
    invoke-static/range {v27 .. v28}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3757
    if-eqz p11, :cond_9

    .line 3758
    move/from16 v0, v32

    move-object/from16 v1, p11

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 3759
    if-nez v32, :cond_10

    .line 3760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3763
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 3766
    :goto_5
    :try_start_6
    move-object/from16 v0, p11

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p11

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_8

    .line 3787
    :cond_9
    :goto_6
    monitor-exit v34
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v32           #res:I
    :goto_7
    return v32

    .line 3641
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v16           #callingPid:I
    .end local v20           #componentSpecified:Z
    .end local v27           #origId:J
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 3654
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v20       #componentSpecified:Z
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_b
    if-nez p1, :cond_c

    .line 3655
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 3656
    .restart local v16       #callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto/16 :goto_1

    .line 3658
    .end local v16           #callingPid:I
    :cond_c
    const/16 p2, -0x1

    move/from16 v16, p2

    .restart local v16       #callingPid:I
    goto/16 :goto_1

    .line 3661
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 3684
    .restart local v7       #realCallingUid:I
    .restart local v23       #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v27       #origId:J
    .restart local v31       #realCallingPid:I
    :cond_e
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when starting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    invoke-static/range {p13 .. p13}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3688
    const/16 v32, -0x4

    monitor-exit v34
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto :goto_7

    .line 3729
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v23           #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v26       #newIntent:Landroid/content/Intent;
    .restart local v30       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v33       #target:Landroid/content/IIntentSender;
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 3731
    .end local v30           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v24

    move-object/from16 v12, v22

    .line 3732
    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    .local v24, e:Landroid/os/RemoteException;
    :goto_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 3767
    .end local v7           #realCallingUid:I
    .end local v24           #e:Landroid/os/RemoteException;
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    .restart local v32       #res:I
    :cond_10
    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_9

    .line 3768
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v29

    .line 3769
    .local v29, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v29

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_11

    .line 3770
    const/4 v2, 0x0

    move-object/from16 v0, p11

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 3771
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p11

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 3772
    const-wide/16 v4, 0x0

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 3773
    const-wide/16 v4, 0x0

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_6

    .line 3788
    .end local v16           #callingPid:I
    .end local v27           #origId:J
    .end local v29           #r:Lcom/android/server/am/ActivityRecord;
    .end local v32           #res:I
    :catchall_0
    move-exception v2

    :goto_9
    monitor-exit v34
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 3775
    .restart local v16       #callingPid:I
    .restart local v27       #origId:J
    .restart local v29       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v32       #res:I
    :cond_11
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 3776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3779
    :cond_12
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 3782
    :goto_a
    :try_start_b
    move-object/from16 v0, p11

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p11

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v2, :cond_12

    goto/16 :goto_6

    .line 3788
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v16           #callingPid:I
    .end local v27           #origId:J
    .end local v29           #r:Lcom/android/server/am/ActivityRecord;
    .end local v32           #res:I
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    :catchall_1
    move-exception v2

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto :goto_9

    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v7       #realCallingUid:I
    .restart local v16       #callingPid:I
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v26       #newIntent:Landroid/content/Intent;
    .restart local v27       #origId:J
    .restart local v31       #realCallingPid:I
    .restart local v33       #target:Landroid/content/IIntentSender;
    :catchall_2
    move-exception v2

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_9

    .line 3780
    .end local v7           #realCallingUid:I
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    .restart local v29       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v32       #res:I
    :catch_1
    move-exception v2

    goto :goto_a

    .line 3764
    .end local v29           #r:Lcom/android/server/am/ActivityRecord;
    :catch_2
    move-exception v2

    goto/16 :goto_5

    .line 3731
    .end local v32           #res:I
    .restart local v7       #realCallingUid:I
    .restart local v26       #newIntent:Landroid/content/Intent;
    .restart local v30       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v31       #realCallingPid:I
    .restart local v33       #target:Landroid/content/IIntentSender;
    :catch_3
    move-exception v24

    goto :goto_8

    .end local v7           #realCallingUid:I
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v26           #newIntent:Landroid/content/Intent;
    .end local v30           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v31           #realCallingPid:I
    .end local v33           #target:Landroid/content/IIntentSender;
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_13
    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto/16 :goto_4
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    .locals 25
    .parameter "r"
    .parameter "sourceRecord"
    .parameter "startFlags"
    .parameter "doResume"
    .parameter "options"

    .prologue
    .line 3124
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    .line 3125
    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 3127
    .local v13, callingUid:I
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getFlags()I

    move-result v17

    .line 3130
    .local v17, launchFlags:I
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v3, :cond_0

    .line 3131
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchFlags(original): 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", launchMode:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", startFlags: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", doResume:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    :cond_0
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_1

    .line 3138
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACT-launchFlags(original): 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", launchMode:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", startFlags: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", doResume:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    :cond_1
    const/high16 v3, 0x4

    and-int v3, v3, v17

    if-nez v3, :cond_10

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 3145
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_USER_LEAVING:Z

    if-eqz v3, :cond_2

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity() => mUserLeaving="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    :cond_2
    if-nez p4, :cond_3

    .line 3152
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 3155
    :cond_3
    const/high16 v3, 0x100

    and-int v3, v3, v17

    if-eqz v3, :cond_11

    move-object/from16 v19, p1

    .line 3162
    .local v19, notTop:Lcom/android/server/am/ActivityRecord;
    :goto_1
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_5

    .line 3163
    move-object/from16 v14, p2

    .line 3164
    .local v14, checkedCaller:Lcom/android/server/am/ActivityRecord;
    if-nez v14, :cond_4

    .line 3165
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 3167
    :cond_4
    iget-object v3, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3169
    and-int/lit8 p3, p3, -0x2

    .line 3173
    .end local v14           #checkedCaller:Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-nez p2, :cond_12

    .line 3176
    const/high16 v3, 0x1000

    and-int v3, v3, v17

    if-nez v3, :cond_6

    .line 3177
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    const/high16 v3, 0x1000

    or-int v17, v17, v3

    .line 3194
    :cond_6
    :goto_2
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v3, :cond_7

    .line 3195
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchFlags(update): 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_8

    const/high16 v3, 0x1000

    and-int v3, v3, v17

    if-eqz v3, :cond_8

    .line 3205
    const-string v3, "ActivityManager"

    const-string v4, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3209
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3212
    :cond_8
    const/4 v11, 0x0

    .line 3213
    .local v11, addingToTask:Z
    const/16 v18, 0x0

    .line 3214
    .local v18, movedHome:Z
    const/16 v21, 0x0

    .line 3215
    .local v21, reuseTask:Lcom/android/server/am/TaskRecord;
    const/high16 v3, 0x1000

    and-int v3, v3, v17

    if-eqz v3, :cond_9

    const/high16 v3, 0x800

    and-int v3, v3, v17

    if-eqz v3, :cond_a

    :cond_9
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_28

    .line 3222
    :cond_a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_28

    .line 3227
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_15

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 3230
    .local v22, taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_3
    if-eqz v22, :cond_28

    .line 3231
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v3, :cond_b

    .line 3236
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3244
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 3245
    .local v15, curTop:Lcom/android/server/am/ActivityRecord;
    if-eqz v15, :cond_d

    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_d

    .line 3246
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3247
    if-eqz p2, :cond_c

    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_16

    :cond_c
    const/4 v12, 0x1

    .line 3249
    .local v12, callerAtFront:Z
    :goto_4
    if-eqz v12, :cond_d

    .line 3252
    const/16 v18, 0x1

    .line 3253
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(I)V

    .line 3254
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 3255
    const/16 p5, 0x0

    .line 3260
    .end local v12           #callerAtFront:Z
    :cond_d
    const/high16 v3, 0x20

    and-int v3, v3, v17

    if-eqz v3, :cond_e

    .line 3261
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 3263
    :cond_e
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_18

    .line 3268
    if-eqz p4, :cond_17

    .line 3269
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 3275
    :goto_5
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v3, :cond_f

    .line 3276
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "START_RETURN_INTENT_TO_CALLER, doResume = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    :cond_f
    const/4 v3, 0x1

    .line 3577
    .end local v15           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v22           #taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_6
    return v3

    .line 3144
    .end local v11           #addingToTask:Z
    .end local v18           #movedHome:Z
    .end local v19           #notTop:Lcom/android/server/am/ActivityRecord;
    .end local v21           #reuseTask:Lcom/android/server/am/TaskRecord;
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3155
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 3181
    .restart local v19       #notTop:Lcom/android/server/am/ActivityRecord;
    :cond_12
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 3185
    const/high16 v3, 0x1000

    or-int v17, v17, v3

    goto/16 :goto_2

    .line 3186
    :cond_13
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_14

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 3190
    :cond_14
    const/high16 v3, 0x1000

    or-int v17, v17, v3

    goto/16 :goto_2

    .line 3227
    .restart local v11       #addingToTask:Z
    .restart local v18       #movedHome:Z
    .restart local v21       #reuseTask:Lcom/android/server/am/TaskRecord;
    :cond_15
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    goto/16 :goto_3

    .line 3247
    .restart local v15       #curTop:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 3271
    :cond_17
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_5

    .line 3282
    :cond_18
    const v3, 0x10008000

    and-int v3, v3, v17

    const v4, 0x10008000

    if-ne v3, v4, :cond_1b

    .line 3288
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    .line 3289
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(I)V

    .line 3290
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3387
    :cond_19
    :goto_7
    if-nez v11, :cond_28

    if-nez v21, :cond_28

    .line 3391
    if-eqz p4, :cond_27

    .line 3392
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 3398
    :goto_8
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v3, :cond_1a

    .line 3399
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "START_TASK_TO_FRONT, doResume = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    :cond_1a
    const/4 v3, 0x2

    goto/16 :goto_6

    .line 3291
    :cond_1b
    const/high16 v3, 0x400

    and-int v3, v3, v17

    if-nez v3, :cond_1c

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1c

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_20

    .line 3298
    :cond_1c
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 3300
    .local v23, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v23, :cond_1f

    .line 3301
    move-object/from16 v0, v23

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_1d

    .line 3306
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3308
    :cond_1d
    const/16 v3, 0x7533

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3310
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_1e

    .line 3311
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACT-AM_NEW_INTENT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    :cond_1e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 3319
    :cond_1f
    const/4 v11, 0x1

    .line 3323
    move-object/from16 p2, v22

    .line 3326
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v3, :cond_19

    .line 3327
    const-string v3, "ActivityManager"

    const-string v4, "special case ..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3331
    .end local v23           #top:Lcom/android/server/am/ActivityRecord;
    :cond_20
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3338
    const/high16 v3, 0x2000

    and-int v3, v3, v17

    if-nez v3, :cond_21

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    :cond_21
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3341
    const/16 v3, 0x7533

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3343
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_22

    .line 3344
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACT-AM_NEW_INTENT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    :cond_22
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_23

    .line 3347
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 3349
    :cond_23
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 3350
    :cond_24
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 3354
    const/4 v11, 0x1

    .line 3355
    move-object/from16 p2, v22

    .line 3358
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v3, :cond_19

    .line 3359
    const-string v3, "ActivityManager"

    const-string v4, "since different intents, start new activity..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3363
    :cond_25
    const/high16 v3, 0x20

    and-int v3, v3, v17

    if-nez v3, :cond_26

    .line 3369
    const/4 v11, 0x1

    .line 3370
    move-object/from16 p2, v22

    .line 3373
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v3, :cond_19

    .line 3374
    const-string v3, "ActivityManager"

    const-string v4, "place the new activity on top of the current task..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3377
    :cond_26
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v3, :cond_19

    .line 3385
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_7

    .line 3394
    :cond_27
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 3415
    .end local v15           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v22           #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_28
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 3419
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 3420
    .restart local v23       #top:Lcom/android/server/am/ActivityRecord;
    if-eqz v23, :cond_2f

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_2f

    .line 3421
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_2f

    .line 3422
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2f

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2f

    .line 3423
    const/high16 v3, 0x2000

    and-int v3, v3, v17

    if-nez v3, :cond_29

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_29

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2f

    .line 3426
    :cond_29
    const/16 v3, 0x7533

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3428
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_2a

    .line 3429
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACT-AM_NEW_INTENT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    :cond_2a
    if-eqz p4, :cond_2b

    .line 3435
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3437
    :cond_2b
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3438
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2c

    .line 3442
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 3444
    :cond_2c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3445
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 3452
    .end local v23           #top:Lcom/android/server/am/ActivityRecord;
    :cond_2d
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2e

    .line 3453
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3457
    :cond_2e
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3458
    const/4 v3, -0x2

    goto/16 :goto_6

    .line 3461
    .restart local v23       #top:Lcom/android/server/am/ActivityRecord;
    :cond_2f
    const/4 v5, 0x0

    .line 3462
    .local v5, newTask:Z
    const/4 v7, 0x0

    .line 3465
    .local v7, keepCurTransition:Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_36

    if-nez v11, :cond_36

    const/high16 v3, 0x1000

    and-int v3, v3, v17

    if-eqz v3, :cond_36

    .line 3467
    if-nez v21, :cond_35

    .line 3469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 3470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v3, :cond_30

    .line 3471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 3473
    :cond_30
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 3474
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v3, :cond_31

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new activity "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in new task "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    :cond_31
    :goto_9
    const/4 v5, 0x1

    .line 3480
    if-nez v18, :cond_32

    .line 3481
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(I)V

    .line 3552
    :cond_32
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v4, v0, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 3555
    if-eqz v5, :cond_33

    .line 3564
    const/16 v3, 0x7534

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3566
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_33

    .line 3567
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACT-AM_CREATE_TASK "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " task:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    :cond_33
    const/16 v3, 0x7535

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3572
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_34

    .line 3573
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACT-AM_CREATE_ACTIVITY "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v8, p5

    .line 3576
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 3577
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 3477
    :cond_35
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_9

    .line 3484
    :cond_36
    if-eqz p2, :cond_3d

    .line 3485
    if-nez v11, :cond_39

    const/high16 v3, 0x400

    and-int v3, v3, v17

    if-eqz v3, :cond_39

    .line 3490
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 3492
    const/4 v7, 0x1

    .line 3493
    if-eqz v23, :cond_3c

    .line 3494
    const/16 v3, 0x7533

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3496
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_37

    .line 3497
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACT-AM_NEW_INTENT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    :cond_37
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3503
    if-eqz p4, :cond_38

    .line 3504
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3506
    :cond_38
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3507
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 3509
    :cond_39
    if-nez v11, :cond_3c

    const/high16 v3, 0x2

    and-int v3, v3, v17

    if-eqz v3, :cond_3c

    .line 3514
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I

    move-result v24

    .line 3515
    .local v24, where:I
    if-ltz v24, :cond_3c

    .line 3516
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 3517
    const/16 v3, 0x7533

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3519
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_3a

    .line 3520
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACT-AM_NEW_INTENT "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    :cond_3a
    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 3524
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3525
    if-eqz p4, :cond_3b

    .line 3526
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3528
    :cond_3b
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 3534
    .end local v24           #where:I
    :cond_3c
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 3535
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v3, :cond_32

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new activity "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in existing task "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 3542
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3543
    .local v10, N:I
    if-lez v10, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v20, v3

    .line 3545
    .local v20, prev:Lcom/android/server/am/ActivityRecord;
    :goto_b
    if-eqz v20, :cond_3f

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_c
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 3548
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_TASKS:Z

    if-eqz v3, :cond_32

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new activity "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in new guessed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 3543
    .end local v20           #prev:Lcom/android/server/am/ActivityRecord;
    :cond_3e
    const/16 v20, 0x0

    goto :goto_b

    .line 3545
    .restart local v20       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_3f
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    goto :goto_c
.end method

.method stopIfSleepingLocked()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 1067
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1068
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1070
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1072
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1075
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1076
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1077
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1080
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method final switchUserLocked(ILcom/android/server/am/UserStartedState;)Z
    .locals 8
    .parameter "userId"
    .parameter "uss"

    .prologue
    .line 666
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 667
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 671
    const/4 v1, 0x0

    .line 699
    :goto_0
    return v1

    .line 673
    :cond_0
    const/4 v1, 0x0

    .line 675
    .local v1, haveActivities:Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 676
    .local v5, top:Lcom/android/server/am/ActivityRecord;
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 678
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 679
    .local v0, N:I
    const/4 v2, 0x0

    .line 680
    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 681
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 682
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_3

    .line 683
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 684
    .local v3, moveToTop:Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v6, :cond_2

    .line 687
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Ljava/util/ArrayList;)V

    .line 691
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 692
    const/4 v1, 0x1

    .line 693
    goto :goto_1

    .line 694
    .end local v3           #moveToTop:Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 698
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "token"
    .parameter "taskId"

    .prologue
    .line 545
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 546
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 547
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 549
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p2, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 553
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 554
    goto :goto_0

    .line 555
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "notTop"

    .prologue
    .line 512
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 513
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 514
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 515
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 518
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 519
    goto :goto_0

    .line 520
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "notTop"

    .prologue
    .line 524
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 525
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 526
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 527
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 530
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 531
    goto :goto_0

    .line 532
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "transit"
    .parameter "options"

    .prologue
    .line 4930
    if-eqz p2, :cond_0

    .line 4931
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4932
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    .line 4933
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 4938
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4939
    return-void

    .line 4935
    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method final validateAppTokensLocked()V
    .locals 3

    .prologue
    .line 2356
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2357
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2359
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2361
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(Ljava/util/List;)V

    .line 2362
    return-void
.end method
