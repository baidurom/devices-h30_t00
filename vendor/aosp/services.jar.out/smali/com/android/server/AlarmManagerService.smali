.class Lcom/android/server/AlarmManagerService;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$MultiMap;,
        Lcom/android/server/AlarmManagerService$AlarmPolicy;,
        Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;,
        Lcom/android/server/AlarmManagerService$DMReceiver;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$AlarmPair;,
        Lcom/android/server/AlarmManagerService$InFlight;
    }
.end annotation


# static fields
.field private static final ACTION_PHB_STATE_CHANGE:Ljava/lang/String; = "huawei.action.intent.PHB_STATE_CHANGE"

.field private static final ALARM_EVENT:I = 0x1

.field private static final ALARM_PHB_DISABLE:I = 0x4

.field private static final ALARM_PHB_ENABLE:I = 0x3

.field private static final ALARM_PHB_NETWORK_CHANGED:I = 0x2

.field private static final ALL_ALARM_TYPE:I = 0x0

.field private static final ANDROID_STR:Ljava/lang/String; = "android"

.field private static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field private static DEBUG_ST:Z = false

.field private static final DESKCLOCK_PACKAGENAME:Ljava/lang/String; = "com.android.deskclock"

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final NONE_WAKEUP_ALARM_TYPE:I = 0x2

.field private static final PHB_DEBUG_ENABLE_PROPERTY:Ljava/lang/String; = "persist.sys.phb.debug.enable"

.field private static final PHB_ENABLE:Ljava/lang/String; = "phb_enable"

.field private static final PHB_ENABLE_PROPERTY:Ljava/lang/String; = "persist.sys.phb.enable"

.field private static final QUANTUM:J = 0xdbba0L

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field private static final RTC_WAKEUP_TIME_ADVANCED:I = 0x3c

.field private static final SMCS_ALARMS_TRIM_ALARMS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final TIME_CHANGED_MASK:I = 0x10000

.field private static final TRIM_ALARM_POST_MSG_DELAY:I = 0xa

.field private static final WAKEUP_ALARM_TYPE:I = 0x1

.field private static bPhbDebug:Z = false

.field private static bPhbEnabled:Z = false

.field private static final localLOGV:Z = true

.field private static localUHBDebug:Z

.field private static final mBackgroundIntent:Landroid/content/Intent;

.field private static mNetworkAvailable:Z

.field static mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;


# instance fields
.field private mAlarmIconPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootPackage:Ljava/lang/String;

.field private mBroadcastRefCount:I

.field private final mBroadcastStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;"
        }
    .end annotation
.end field

.field private mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDMEnable:Z

.field private mDMLock:Ljava/lang/Object;

.field private mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

.field private final mDateChangeSender:Landroid/app/PendingIntent;

.field private mDescriptor:I

.field private mDmFreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mDmResendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private mIPOShutdown:Z

.field private mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

.field private mIsFirstPowerOffAlarm:Z

.field private mLock:Ljava/lang/Object;

.field private final mLog:Lcom/android/internal/util/LocalLog;

.field private mPHBReceiver:Landroid/content/BroadcastReceiver;

.field private final mPendingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWakeupPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerOffAlarmLock:Ljava/lang/Object;

.field private mPoweroffAlarmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$AlarmPair;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

.field private final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mRtcAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtcWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/AlarmManagerService$MultiMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeTickSender:Landroid/app/PendingIntent;

.field private mTrimAlarmPkg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private final mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

.field private mWaitThreadlock:Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ST:Z

    .line 161
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->localUHBDebug:Z

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 189
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    .line 190
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    .line 191
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 328
    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    .line 142
    iput-object v12, p0, Lcom/android/server/AlarmManagerService;->mTrimAlarmPkg:Ljava/util/HashSet;

    .line 166
    iput-boolean v8, p0, Lcom/android/server/AlarmManagerService;->mIsFirstPowerOffAlarm:Z

    .line 173
    new-instance v10, Lcom/android/internal/util/LocalLog;

    const-string v11, "AlarmManager"

    invoke-direct {v10, v11}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 175
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 177
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    .line 178
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    .line 179
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    .line 180
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    .line 182
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    .line 184
    new-instance v10, Lcom/android/server/AlarmManagerService$MultiMap;

    invoke-direct {v10, v12}, Lcom/android/server/AlarmManagerService$MultiMap;-><init>(Lcom/android/server/AlarmManagerService$1;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;

    .line 187
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    .line 188
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupPackages:Ljava/util/ArrayList;

    .line 195
    new-instance v10, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v10}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 198
    iput v9, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 200
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 201
    new-instance v10, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    .line 202
    new-instance v10, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 205
    new-instance v10, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 209
    iput-object v12, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 210
    iput-boolean v8, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    .line 211
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    .line 212
    iput-object v12, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 213
    iput-object v12, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 214
    iput-object v12, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 270
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    .line 271
    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    .line 272
    iput-object v12, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    .line 273
    iput-object v12, p0, Lcom/android/server/AlarmManagerService;->mReceiver:Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

    .line 274
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    .line 275
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    .line 325
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    .line 1482
    new-instance v10, Lcom/android/server/AlarmManagerService$3;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mPHBReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    .line 330
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()I

    move-result v10

    iput v10, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    .line 331
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDescriptor is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v10, "persist.sys.timezone"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, tz:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 336
    invoke-virtual {p0, v7}, Lcom/android/server/AlarmManagerService;->setTimeZone(Ljava/lang/String;)V

    .line 340
    :cond_0
    new-instance v10, Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;-><init>(Lcom/android/server/AlarmManagerService;)V

    sput-object v10, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    .line 342
    const-string v10, "power"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 343
    .local v6, pm:Landroid/os/PowerManager;
    const-string v10, "AlarmManager"

    invoke-virtual {v6, v8, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 344
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_off_alarm_package_name"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    .line 346
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.TIME_TICK"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x4000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v9, v10, v9, v11}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 350
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.DATE_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v4, intent:Landroid/content/Intent;
    const/high16 v10, 0x2000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 352
    const/high16 v10, 0x800

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v9, v4, v10, v11}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 356
    new-instance v10, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 357
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v10}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 358
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v10}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 359
    new-instance v10, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 362
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->initPhbConfig()V

    .line 364
    new-instance v10, Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mReceiver:Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

    .line 366
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 367
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    const-string v11, "com.android.deskclock"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :try_start_0
    const-string v10, "DmAgent"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 371
    .local v1, binder:Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 372
    invoke-static {v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 373
    .local v0, agent:Lcom/mediatek/common/dm/DmAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v5

    .line 374
    .local v5, locked:Z
    const-string v10, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dm state lock is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/server/AlarmManagerService;->enableDm(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v0           #agent:Lcom/mediatek/common/dm/DmAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v5           #locked:Z
    :goto_1
    new-instance v8, Lcom/android/server/AlarmManagerService$DMReceiver;

    invoke-direct {v8, p0}, Lcom/android/server/AlarmManagerService$DMReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v8, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 383
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 384
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 389
    iget v8, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 390
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 396
    :goto_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v8, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {v8, v9, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    return-void

    .end local v3           #filter:Landroid/content/IntentFilter;
    .restart local v0       #agent:Lcom/mediatek/common/dm/DmAgent;
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v5       #locked:Z
    :cond_1
    move v8, v9

    .line 375
    goto :goto_0

    .line 377
    .end local v0           #agent:Lcom/mediatek/common/dm/DmAgent;
    .end local v5           #locked:Z
    :cond_2
    :try_start_1
    const-string v8, "AlarmManager"

    const-string v9, "dm binder is null!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 379
    .end local v1           #binder:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 380
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "AlarmManager"

    const-string v9, "remote error"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 392
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const-string v8, "AlarmManager"

    const-string v9, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 15
    .parameter
    .parameter
    .parameter "nowELAPSED"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2132
    .local p1, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, mDmFreeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, resendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 2133
    .local v14, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2134
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2136
    .local v8, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 2137
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2139
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending alarm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.ALARM_COUNT"

    iget v7, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2146
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v2, :cond_1

    .line 2147
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2150
    :cond_1
    new-instance v13, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {v13, p0, v2}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)V

    .line 2152
    .local v13, inflight:Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2153
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2154
    iget-object v9, v13, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2155
    .local v9, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2156
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v2, :cond_4

    .line 2157
    const/4 v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2158
    move-wide/from16 v0, p3

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2162
    :goto_2
    iget-object v11, v13, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2163
    .local v11, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2164
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v2, :cond_5

    .line 2165
    const/4 v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2166
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2170
    :goto_3
    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_3

    .line 2172
    :cond_2
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2173
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2174
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V

    .line 2136
    .end local v9           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 2160
    .restart local v9       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v13       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_4
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 2183
    .end local v9           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :catch_0
    move-exception v10

    .line 2184
    .local v10, e:Landroid/app/PendingIntent$CanceledException;
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2187
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2168
    .end local v10           #e:Landroid/app/PendingIntent$CanceledException;
    .restart local v9       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v11       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v13       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_5
    :try_start_1
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 2189
    .end local v9           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v10

    .line 2190
    .local v10, e:Ljava/lang/RuntimeException;
    const-string v2, "AlarmManager"

    const-string v3, "Failure sending alarm."

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2178
    .end local v10           #e:Ljava/lang/RuntimeException;
    :cond_6
    :try_start_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 2193
    .end local v8           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12           #i:I
    :cond_7
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsFirstPowerOffAlarm:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIsFirstPowerOffAlarm:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->close(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localUHBDebug:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    sput-boolean p0, Lcom/android/server/AlarmManagerService;->localUHBDebug:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/AlarmManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/HashMap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->updatePoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 107
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AlarmManagerService;->FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3100()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$3308(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$3310(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updatePendingWakeupAlarms()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/AlarmManagerService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTrimAlarmPkg:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/AlarmManagerService;Ljava/util/HashSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removeByPkg(Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->shutdownCheckPoweroffAlarm()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/AlarmManagerService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$4400(J)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/AlarmManagerService;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/AlarmManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/AlarmManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 11
    .parameter "alarm"

    .prologue
    const/4 v10, 0x2

    .line 793
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 795
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 796
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v7, :cond_0

    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v7, v10, :cond_1

    .line 797
    :cond_0
    sget-object v7, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-virtual {v7, p1}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->updateAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 800
    :cond_1
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v1, p1, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 801
    .local v3, index:I
    if-gez v3, :cond_2

    .line 802
    rsub-int/lit8 v7, v3, 0x0

    add-int/lit8 v3, v7, -0x1

    .line 804
    :cond_2
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding alarm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 807
    sget-boolean v7, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    if-eqz v7, :cond_5

    .line 808
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v7, :cond_3

    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v7, v10, :cond_4

    .line 809
    :cond_3
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localUHBDebug:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " alarms:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/server/AlarmManagerService;->dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 827
    :cond_4
    return v3

    .line 814
    :cond_5
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alarms: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v4, 0x0

    .line 816
    .local v4, position:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 817
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 818
    .local v5, time:Landroid/text/format/Time;
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 819
    const-string v7, "%b %d %I:%M:%S %p"

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 820
    .local v6, timeStr:Ljava/lang/String;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    add-int/lit8 v4, v4, 0x1

    .line 823
    goto :goto_0
.end method

.method private addPendingAlarms(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p2, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1149
    :cond_0
    return-void

    .line 1136
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1137
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1139
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1140
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1142
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 1144
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPendingAlarms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", repeatInterval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addPendingWakeupAlarms(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1369
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1390
    :cond_0
    :goto_0
    return-void

    .line 1374
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1375
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1376
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1377
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->isTargetAlarmMatched(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1378
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1380
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v3, v4}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 1382
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v3, :cond_2

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPendingWakeupAlarms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeatInterval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1387
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catch_0
    move-exception v1

    .line 1388
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private native bootFromAlarm(I)Z
.end method

.method private native close(I)V
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "pw"
    .parameter
    .parameter "prefix"
    .parameter "label"
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1038
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1039
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1040
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1041
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1042
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1038
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1044
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private static dumpAlarmlist(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "log"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3158
    .local p0, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v2, 0x0

    .line 3159
    .local v2, position:I
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpAlarmlist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3161
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v2, 0x1

    .end local v2           #position:I
    .local v3, position:I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->getAlarmTimeString(Lcom/android/server/AlarmManagerService$Alarm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .end local v3           #position:I
    .restart local v2       #position:I
    goto :goto_0

    .line 3163
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private getAlarmList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 782
    packed-switch p1, :pswitch_data_0

    .line 789
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 783
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 784
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 785
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 786
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 782
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getAlarmTimeString(Lcom/android/server/AlarmManagerService$Alarm;)Ljava/lang/String;
    .locals 13
    .parameter "a"

    .prologue
    const-wide/16 v11, 0x3e8

    .line 3166
    iget v6, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 3167
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ": origWhen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    invoke-static {v7, v8}, Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v7, v8}, Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v9, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    sub-long/2addr v7, v9

    div-long/2addr v7, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", adj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". cyc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3174
    :goto_0
    return-object v6

    .line 3171
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3172
    .local v4, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3173
    .local v2, nowELAPSED:J
    sub-long v0, v4, v2

    .line 3174
    .local v0, delta:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ": origWhen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    add-long/2addr v7, v0

    invoke-static {v7, v8}, Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long/2addr v7, v0

    invoke-static {v7, v8}, Lcom/android/server/AlarmManagerService;->getTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget-wide v9, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    sub-long/2addr v7, v9

    div-long/2addr v7, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", adj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->adjustable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". cyc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getNetworkAvailable()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1432
    const/4 v3, 0x0

    .line 1433
    .local v3, mMobileConnected:Z
    const/4 v5, 0x0

    .line 1434
    .local v5, mWifiConnected:Z
    const/4 v0, 0x0

    .line 1436
    .local v0, available:Z
    :try_start_0
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1437
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 1438
    .local v4, mMobileState:Landroid/net/NetworkInfo$State;
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v9, :cond_4

    .line 1439
    sget-boolean v9, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v9, :cond_0

    const-string v9, "AlarmManager"

    const-string v10, "PHB: mobile network connected"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_0
    const/4 v3, 0x1

    .line 1445
    :goto_0
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 1446
    .local v6, mWifiState:Landroid/net/NetworkInfo$State;
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v9, :cond_5

    .line 1447
    sget-boolean v9, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v9, :cond_1

    const-string v9, "AlarmManager"

    const-string v10, "PHB: wi-fi network connected"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1448
    :cond_1
    const/4 v5, 0x1

    .line 1456
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #mMobileState:Landroid/net/NetworkInfo$State;
    .end local v6           #mWifiState:Landroid/net/NetworkInfo$State;
    :goto_1
    if-nez v3, :cond_2

    if-eqz v5, :cond_6

    :cond_2
    move v0, v8

    .line 1457
    :goto_2
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v7, :cond_3

    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PHB: network available: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_3
    return v0

    .line 1442
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v4       #mMobileState:Landroid/net/NetworkInfo$State;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1450
    .restart local v6       #mWifiState:Landroid/net/NetworkInfo$State;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 1452
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #mMobileState:Landroid/net/NetworkInfo$State;
    .end local v6           #mWifiState:Landroid/net/NetworkInfo$State;
    :catch_0
    move-exception v2

    .line 1453
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    move v0, v7

    .line 1456
    goto :goto_2
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .parameter "pi"

    .prologue
    .line 2002
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 2003
    .local v1, pkg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2004
    .local v0, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_0

    .line 2005
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(Ljava/lang/String;)V

    .line 2006
    .restart local v0       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    :cond_0
    return-object v0
.end method

.method private static getTimeString(J)Ljava/lang/String;
    .locals 2
    .parameter "milliSec"

    .prologue
    .line 3180
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 3181
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 3182
    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    .line 3183
    .local v1, timeStr:Ljava/lang/String;
    return-object v1
.end method

.method private native init()I
.end method

.method private initPhbConfig()V
    .locals 14

    .prologue
    .line 1238
    const-string v0, "/data/cust/xml/phb_no_net.xml"

    .line 1239
    .local v0, PHB_XML_BLACKLIST_FILE:Ljava/lang/String;
    const-string v1, "item"

    .line 1241
    .local v1, PHB_XML_TAG_ITEM:Ljava/lang/String;
    const/4 v11, 0x1

    const-string v12, "persist.sys.phb.debug.enable"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-ne v11, v12, :cond_3

    .line 1242
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    .line 1246
    :goto_0
    sget-boolean v11, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v11, :cond_0

    const-string v11, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bPhbDebug: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getPhbState()Z

    move-result v11

    sput-boolean v11, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    .line 1249
    sget-boolean v11, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v11, :cond_1

    const-string v11, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bPhbEnabled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_1
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    .line 1252
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1253
    .local v5, filter:Landroid/content/IntentFilter;
    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1254
    const-string v11, "huawei.action.intent.PHB_STATE_CHANGE"

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1255
    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/AlarmManagerService;->mPHBReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1258
    const/4 v6, 0x0

    .line 1260
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    const-string v11, "/data/cust/xml/phb_no_net.xml"

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1261
    .end local v6           #is:Ljava/io/InputStream;
    .local v7, is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 1262
    .local v10, xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v10, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1263
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 1264
    .local v4, eventType:I
    const/4 v9, 0x0

    .line 1266
    .local v9, tag_item:Z
    :goto_1
    const/4 v11, 0x1

    if-eq v4, v11, :cond_5

    .line 1267
    packed-switch v4, :pswitch_data_0

    .line 1282
    :pswitch_0
    const-string v11, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "default eventType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_2
    :goto_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v4

    goto :goto_1

    .line 1244
    .end local v4           #eventType:I
    .end local v5           #filter:Landroid/content/IntentFilter;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v9           #tag_item:Z
    .end local v10           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    goto/16 :goto_0

    .line 1269
    .restart local v4       #eventType:I
    .restart local v5       #filter:Landroid/content/IntentFilter;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v9       #tag_item:Z
    .restart local v10       #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_1
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "item"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1270
    const/4 v9, 0x1

    goto :goto_2

    .line 1274
    :pswitch_2
    if-eqz v9, :cond_2

    .line 1275
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 1276
    .local v8, packageName:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupPackages:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    sget-boolean v11, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v11, :cond_4

    const-string v11, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PHB blacklist package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ***"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1278
    :cond_4
    const/4 v9, 0x0

    .line 1279
    goto :goto_2

    .line 1293
    .end local v8           #packageName:Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_8

    .line 1295
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v7

    .line 1301
    .end local v4           #eventType:I
    .end local v7           #is:Ljava/io/InputStream;
    .end local v9           #tag_item:Z
    .end local v10           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #is:Ljava/io/InputStream;
    :cond_6
    :goto_3
    return-void

    .line 1296
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v4       #eventType:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v9       #tag_item:Z
    .restart local v10       #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    .line 1297
    .local v3, e2:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v7

    .line 1298
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 1286
    .end local v3           #e2:Ljava/lang/Exception;
    .end local v4           #eventType:I
    .end local v9           #tag_item:Z
    .end local v10           #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v2

    .line 1288
    .local v2, e:Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1293
    if-eqz v6, :cond_6

    .line 1295
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 1296
    :catch_2
    move-exception v3

    .line 1297
    .restart local v3       #e2:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1289
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e2:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 1291
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    :try_start_6
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1293
    if-eqz v6, :cond_6

    .line 1295
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 1296
    :catch_4
    move-exception v3

    .line 1297
    .restart local v3       #e2:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1293
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v6, :cond_7

    .line 1295
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1298
    :cond_7
    :goto_7
    throw v11

    .line 1296
    :catch_5
    move-exception v3

    .line 1297
    .restart local v3       #e2:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1293
    .end local v3           #e2:Ljava/lang/Exception;
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    goto :goto_6

    .line 1289
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v6, v7

    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 1286
    .end local v6           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    :catch_7
    move-exception v2

    move-object v6, v7

    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    goto :goto_4

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v4       #eventType:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v9       #tag_item:Z
    .restart local v10       #xmlParser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    move-object v6, v7

    .end local v7           #is:Ljava/io/InputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 1267
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isBootFromAlarm(I)Z
    .locals 1
    .parameter "fd"

    .prologue
    .line 2257
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->bootFromAlarm(I)Z

    move-result v0

    return v0
.end method

.method private isTargetAlarmMatched(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 16
    .parameter "alarm"

    .prologue
    .line 1304
    const/4 v8, 0x0

    .line 1306
    .local v8, matched:Z
    :try_start_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v12}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    .line 1309
    .local v10, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mPendingWakeupPackages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1310
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1311
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1313
    .local v9, pName:Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1314
    sget-boolean v12, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v12, :cond_1

    const-string v12, "AlarmManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PHB blacklist match: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_1
    const/4 v8, 0x1

    .line 1319
    .end local v9           #pName:Ljava/lang/String;
    :cond_2
    if-nez v8, :cond_6

    .line 1321
    sget-object v12, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    #getter for: Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$300(Lcom/android/server/AlarmManagerService$AlarmPolicy;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1322
    .local v1, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    sget-boolean v12, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v12, :cond_4

    const-string v13, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PHB histroy : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "android"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1324
    sget-boolean v12, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v12, :cond_5

    const-string v12, "AlarmManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PHB histroy match: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1325
    :cond_5
    const/4 v8, 0x1

    .line 1331
    .end local v1           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    if-eqz v8, :cond_7

    .line 1332
    const/4 v6, 0x0

    .line 1334
    .local v6, locked:Z
    :try_start_1
    const-string v12, "power"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v7

    .line 1335
    .local v7, mPowerManager:Landroid/os/IPowerManager;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v12}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v12

    invoke-interface {v7, v12}, Landroid/os/IPowerManager;->getPartialLockByUid(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1336
    if-eqz v6, :cond_7

    .line 1337
    const/4 v8, 0x0

    .line 1346
    .end local v6           #locked:Z
    .end local v7           #mPowerManager:Landroid/os/IPowerManager;
    :cond_7
    :goto_0
    if-eqz v8, :cond_9

    .line 1347
    :try_start_2
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_9

    .line 1349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1350
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1351
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1352
    .local v11, tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget v12, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v12, v13, :cond_8

    iget-object v12, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v12}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1354
    const/4 v8, 0x0

    .line 1365
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v10           #packageName:Ljava/lang/String;
    .end local v11           #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_9
    :goto_1
    return v8

    .line 1339
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6       #locked:Z
    .restart local v10       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1341
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1342
    const/4 v8, 0x0

    goto :goto_0

    .line 1361
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6           #locked:Z
    .end local v10           #packageName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1362
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1363
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 774
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    const/4 v1, 0x1

    .line 778
    :goto_1
    return v1

    .line 773
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 778
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private removeByPkg(Ljava/util/HashSet;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3324
    .local p1, sPkgs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 3325
    :cond_0
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->DEBUG_ST:Z

    if-eqz v4, :cond_1

    .line 3326
    const-string v4, "AlarmManager"

    const-string v5, "AlarmManagerService.removeByPkg: invalid pkg name"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    :cond_1
    :goto_0
    return-void

    .line 3331
    :cond_2
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3332
    const/4 v2, 0x0

    .line 3333
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3335
    .local v3, packageName:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3336
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3337
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 3338
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->DEBUG_ST:Z

    if-eqz v4, :cond_3

    .line 3339
    const-string v4, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AlarmManagerService.removeByPkg: remove "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    goto :goto_1

    .line 3343
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3344
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3345
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "AlarmManager"

    const-string v5, "AlarmManagerService removeByPkg"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3343
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter
    .parameter "operation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 704
    :cond_0
    return-void

    .line 696
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 698
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 700
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 701
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 721
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 734
    :cond_0
    return-void

    .line 726
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 728
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 730
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 731
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private removePendingAlarms(Ljava/lang/String;I)V
    .locals 11
    .parameter "packageName"
    .parameter "alarmType"

    .prologue
    const/4 v10, 0x0

    .line 1155
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1161
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1163
    .local v4, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1165
    .local v2, nowELAPSED:J
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1166
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz p1, :cond_3

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v6, p2, :cond_2

    .line 1168
    :cond_3
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 1170
    :cond_4
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_5

    .line 1171
    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1177
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1179
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v6, v7}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 1181
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    .line 1182
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePendingAlarms: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", repeatInterval: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1172
    :cond_6
    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 1174
    :cond_7
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_5

    .line 1175
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_2

    .line 1186
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2           #nowELAPSED:J
    .end local v4           #nowRTC:J
    :cond_8
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 1187
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1189
    :cond_9
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 1190
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1192
    :cond_a
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 1193
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1195
    :cond_b
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1196
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto/16 :goto_0
.end method

.method private removePendingWakeupAlarms()V
    .locals 11

    .prologue
    .line 1393
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 1429
    :cond_0
    :goto_0
    return-void

    .line 1398
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1399
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1401
    .local v5, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1403
    .local v3, nowELAPSED:J
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1404
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v7, :cond_4

    .line 1405
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_3

    .line 1406
    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1411
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1413
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v7, v8}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 1415
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    .line 1416
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v7, :cond_2

    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removePendingWakeupAlarms: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", repeatInterval: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1426
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v3           #nowELAPSED:J
    .end local v5           #nowRTC:J
    :catch_0
    move-exception v1

    .line 1427
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1407
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v3       #nowELAPSED:J
    .restart local v5       #nowRTC:J
    :cond_4
    :try_start_1
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 1408
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_3

    .line 1409
    iput-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_2

    .line 1420
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3           #nowELAPSED:J
    .end local v5           #nowRTC:J
    :cond_5
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 1421
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1423
    :cond_6
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1424
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private removeUserLocked(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "userHandle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 763
    :cond_0
    return-void

    .line 755
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 757
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 759
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 760
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private resendDmPendingList(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2199
    .local p1, DmResendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2200
    .local v11, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2201
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2204
    .local v6, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending alarm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.ALARM_COUNT"

    iget v5, v6, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2211
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v0, :cond_1

    .line 2212
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2214
    :cond_1
    new-instance v10, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {v10, p0, v0}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)V

    .line 2216
    .local v10, inflight:Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2218
    iget-object v7, v10, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2219
    .local v7, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2220
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v0, :cond_3

    .line 2221
    const/4 v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2226
    :goto_1
    iget-object v9, v10, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2227
    .local v9, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2228
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v0, :cond_4

    .line 2229
    const/4 v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2234
    :goto_2
    iget v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v0, :cond_0

    .line 2236
    :cond_2
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2237
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2238
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 2241
    .end local v7           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v10           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :catch_0
    move-exception v8

    .line 2242
    .local v8, e:Landroid/app/PendingIntent$CanceledException;
    iget-wide v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2245
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2224
    .end local v8           #e:Landroid/app/PendingIntent$CanceledException;
    .restart local v7       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v10       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_3
    :try_start_1
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2247
    .end local v7           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v10           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v8

    .line 2248
    .local v8, e:Ljava/lang/RuntimeException;
    const-string v0, "AlarmManager"

    const-string v1, "Failure sending alarm."

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2232
    .end local v8           #e:Ljava/lang/RuntimeException;
    .restart local v7       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v9       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v10       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_4
    :try_start_2
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2251
    .end local v6           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v10           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_5
    return-void
.end method

.method private resetPoweroffAlarm()V
    .locals 18

    .prologue
    .line 2286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 2287
    .local v11, packageList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2288
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 2290
    .local v12, setPackageName:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2291
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2292
    .local v13, tempName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$AlarmPair;

    iget-wide v9, v1, Lcom/android/server/AlarmManagerService$AlarmPair;->mTriggerTime:J

    .line 2293
    .local v9, latestTime:J
    move-object v12, v13

    .line 2298
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2299
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #tempName:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 2300
    .restart local v13       #tempName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$AlarmPair;

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService$AlarmPair;->mTriggerTime:J

    .line 2301
    .local v14, tempTime:J
    cmp-long v1, v14, v9

    if-gtz v1, :cond_0

    .line 2302
    cmp-long v1, v14, v9

    if-nez v1, :cond_1

    .line 2303
    const-string v1, "com.android.deskclock"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2307
    :cond_1
    move-wide v9, v14

    .line 2308
    move-object v12, v13

    goto :goto_0

    .line 2295
    .end local v9           #latestTime:J
    .end local v13           #tempName:Ljava/lang/String;
    .end local v14           #tempTime:J
    :cond_2
    const-string v1, "AlarmManager"

    const-string v2, "reset poweroff alarm none"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :goto_1
    return-void

    .line 2313
    .restart local v9       #latestTime:J
    .restart local v13       #tempName:Ljava/lang/String;
    :cond_3
    const-string v1, "com.android.deskclock"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2314
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set Prop 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    const-string v1, "persist.sys.bootpackage"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v3, 0x6

    const-wide/16 v4, 0x3e8

    div-long v4, v9, v4

    const-wide/16 v6, 0x3c

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    rem-long v6, v9, v6

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 2336
    :goto_2
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rest power off alarm is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const-string v1, "sys.power_off_alarm"

    const-wide/16 v2, 0x3e8

    div-long v2, v9, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_off_alarm_package_name"

    invoke-static {v1, v2, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 2320
    :cond_4
    const-string v1, "com.mediatek.schpwronoff"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2321
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set Prop 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    const-string v1, "persist.sys.bootpackage"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v3, 0x7

    const-wide/16 v4, 0x3e8

    div-long v4, v9, v4

    const-wide/16 v6, 0x3e8

    rem-long v6, v9, v6

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    goto :goto_2

    .line 2326
    :cond_5
    const-string v1, "com.mediatek.poweronofftest"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2327
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set Prop 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    const-string v1, "persist.sys.bootpackage"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v3, 0x7

    const-wide/16 v4, 0x3e8

    div-long v4, v9, v4

    const-wide/16 v6, 0x3e8

    rem-long v6, v9, v6

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    goto/16 :goto_2

    .line 2332
    :cond_6
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to set power off alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private native set(IIJJ)V
.end method

.method private native setKernelTimezone(II)I
.end method

.method private setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 12
    .parameter "alarm"

    .prologue
    const/4 v2, 0x1

    const-wide/16 v10, 0x3e8

    .line 849
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 854
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    .line 855
    const-wide/16 v3, 0x0

    .line 856
    .local v3, alarmSeconds:J
    const-wide/16 v5, 0x0

    .line 861
    .local v5, alarmNanoseconds:J
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native set alarm :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 873
    .end local v3           #alarmSeconds:J
    .end local v5           #alarmNanoseconds:J
    :goto_1
    return-void

    .line 858
    :cond_0
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    div-long v3, v0, v10

    .line 859
    .restart local v3       #alarmSeconds:J
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    rem-long/2addr v0, v10

    mul-long/2addr v0, v10

    mul-long v5, v0, v10

    .restart local v5       #alarmNanoseconds:J
    goto :goto_0

    .line 867
    .end local v3           #alarmSeconds:J
    .end local v5           #alarmNanoseconds:J
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 868
    .local v7, msg:Landroid/os/Message;
    iput v2, v7, Landroid/os/Message;->what:I

    .line 870
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 871
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private shutdownCheckPoweroffAlarm()V
    .locals 14

    .prologue
    .line 2398
    const-string v10, "AlarmManager"

    const-string v11, "into shutdownCheckPoweroffAlarm()!!"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 2400
    .local v7, packageList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2401
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 2403
    .local v8, setPackageName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2404
    .local v5, nowTime:J
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2405
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2406
    .local v9, tempName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$AlarmPair;

    iget-wide v3, v10, Lcom/android/server/AlarmManagerService$AlarmPair;->mTriggerTime:J

    .line 2407
    .local v3, latestTime:J
    move-object v8, v9

    .line 2408
    const-wide/16 v10, 0x7530

    sub-long v10, v3, v10

    cmp-long v10, v10, v5

    if-gtz v10, :cond_1

    .line 2409
    const-string v10, "AlarmManager"

    const-string v11, "get target latestTime < 30S!!"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2411
    .local v2, italarm:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2412
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2413
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v10, v10, v3

    if-nez v10, :cond_0

    .line 2415
    const/16 v10, 0x8

    const-wide/32 v11, 0xea60

    add-long/2addr v11, v3

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 2421
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2           #italarm:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v3           #latestTime:J
    .end local v9           #tempName:Ljava/lang/String;
    :cond_1
    const-string v10, "AlarmManager"

    const-string v11, "away shutdownCheckPoweroffAlarm()!!"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    return-void
.end method

.method private triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 11
    .parameter
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const-wide/16 v9, 0x0

    .line 1519
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1520
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .local v2, repeats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1524
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1526
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking active alarm when="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v3, v3, p3

    if-lez v3, :cond_2

    .line 1564
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1565
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1566
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1567
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v5, v5

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1568
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    goto :goto_1

    .line 1537
    :cond_2
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v3, p3, v3

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 1538
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alarm is late! alarm time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delay (in seconds): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v5, p3, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_3
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alarm triggering: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1547
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_4

    .line 1550
    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v3, v3

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v5, p3, v5

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1552
    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1558
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_0

    .line 1559
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1571
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 1573
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    .line 1574
    const-string v3, "AlarmManager"

    const-string v4, "IPO Shutdown so drop the repeating alarm"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_6
    :goto_2
    return-void

    .line 1578
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_2
.end method

.method private updatePendingWakeupAlarms()V
    .locals 3

    .prologue
    .line 1462
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1463
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->getNetworkAvailable()Z

    move-result v0

    .line 1465
    .local v0, available:Z
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    if-ne v1, v0, :cond_0

    .line 1466
    monitor-exit v2

    .line 1480
    :goto_0
    return-void

    .line 1468
    :cond_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    .line 1469
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    if-eqz v1, :cond_1

    .line 1470
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    if-eqz v1, :cond_2

    .line 1472
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->removePendingWakeupAlarms()V

    .line 1479
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #available:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1475
    .restart local v0       #available:Z
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->addPendingWakeupAlarms(Ljava/util/ArrayList;)V

    .line 1476
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->addPendingWakeupAlarms(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private updatePoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;Ljava/util/HashMap;)V
    .locals 9
    .parameter "alarm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$AlarmPair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2265
    .local p2, poweroffAlarmMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPair;>;"
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2266
    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2267
    .local v1, packageList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2268
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2270
    .local v2, tempName:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$AlarmPair;

    iget-wide v3, v5, Lcom/android/server/AlarmManagerService$AlarmPair;->mTriggerTime:J

    .line 2271
    .local v3, tempTime:J
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v5, v3, v7

    if-gtz v5, :cond_0

    .line 2272
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2273
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    const-string v5, "AlarmManager"

    const-string v7, "power off alarm update deleted"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2278
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #packageList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #tempName:Ljava/lang/String;
    .end local v3           #tempTime:J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2277
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1       #packageList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm()V

    .line 2278
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2279
    return-void
.end method

.method private native waitForAlarm(I)I
.end method


# virtual methods
.method SearchAlarmListForPackage(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2116
    .local p1, mRtcWakeupAlarms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, mAlarmIconPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2117
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2118
    .local v2, tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2119
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2120
    const/4 v3, 0x1

    .line 2124
    .end local v1           #j:I
    .end local v2           #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :goto_2
    return v3

    .line 2118
    .restart local v1       #j:I
    .restart local v2       #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2116
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2124
    .end local v1           #j:I
    .end local v2           #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public bootFromPoweroffAlarm()Z
    .locals 3

    .prologue
    .line 440
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, bootReason:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 442
    .local v1, ret:Z
    :goto_0
    return v1

    .line 441
    .end local v1           #ret:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelPoweroffAlarm(Ljava/lang/String;)V
    .locals 8
    .parameter "name"

    .prologue
    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    .line 2369
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove power off alarm pacakge name "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_off_alarm_package_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2376
    .local v7, bootPackage:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 2377
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2378
    const-string v0, "com.android.deskclock"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2379
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v2, 0x6

    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 2386
    :cond_0
    :goto_0
    const-string v0, "sys.power_off_alarm"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2390
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm()V

    .line 2391
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2392
    return-void

    .line 2380
    :cond_2
    const-string v0, "com.mediatek.schpwronoff"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2381
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    goto :goto_0

    .line 2383
    :cond_3
    const-string v0, "com.mediatek.poweronofftest"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2384
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    goto :goto_0

    .line 2391
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 27
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    :goto_0
    return-void

    .line 885
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 886
    :try_start_0
    const-string v3, "Current Alarm Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 888
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 889
    .local v7, now:J
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 890
    .local v22, sdf:Ljava/text/SimpleDateFormat;
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    const-string v3, "  Realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 892
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "RTC_WAKEUP"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 896
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "RTC"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 900
    .end local v7           #now:J
    .end local v22           #sdf:Ljava/text/SimpleDateFormat;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 901
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 902
    .restart local v7       #now:J
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    const-string v3, "  Elapsed realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, p2

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "ELAPSED_WAKEUP"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 908
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "ELAPSED"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 913
    .end local v7           #now:J
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 914
    const-string v3, "  Broadcast ref count: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v4, "  Recent problems"

    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 918
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 921
    :cond_7
    const/16 v3, 0xa

    new-array v0, v3, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v25, v0

    .line 922
    .local v25, topFilters:[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v11, Lcom/android/server/AlarmManagerService$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 933
    .local v11, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v19, 0x0

    .line 934
    .local v19, len:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 935
    .local v9, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 937
    .local v10, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 938
    .local v13, fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 939
    .local v14, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v19, :cond_c

    const/4 v3, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-static {v0, v3, v1, v14, v11}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v20

    .line 941
    .local v20, pos:I
    :goto_2
    if-gez v20, :cond_a

    .line 942
    move/from16 v0, v20

    neg-int v3, v0

    add-int/lit8 v20, v3, -0x1

    .line 944
    :cond_a
    move-object/from16 v0, v25

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_9

    .line 945
    move-object/from16 v0, v25

    array-length v3, v0

    sub-int v3, v3, v20

    add-int/lit8 v12, v3, -0x1

    .line 946
    .local v12, copylen:I
    if-lez v12, :cond_b

    .line 947
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v20

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 949
    :cond_b
    aput-object v14, v25, v20

    .line 950
    move-object/from16 v0, v25

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_9

    .line 951
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 939
    .end local v12           #copylen:I
    .end local v20           #pos:I
    :cond_c
    const/16 v20, 0x0

    goto :goto_2

    .line 956
    .end local v9           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v10           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13           #fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v14           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_d
    if-lez v19, :cond_11

    .line 957
    const-string v3, "  Top Alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move/from16 v0, v19

    if-ge v15, v0, :cond_11

    .line 959
    aget-object v14, v25, v15

    .line 960
    .restart local v14       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v3, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v3, :cond_e

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 962
    :cond_e
    iget-wide v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 963
    const-string v3, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 964
    const-string v3, " wakeups, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 965
    const-string v3, " alarms: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 967
    const-string v3, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 968
    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_f

    .line 969
    const-string v3, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 971
    :cond_f
    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_10

    .line 972
    const-string v3, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 974
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 958
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 978
    .end local v14           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v15           #i:I
    :cond_11
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    const-string v3, "  Alarm Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v24, tmpFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_12
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 982
    .restart local v9       #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 983
    .restart local v10       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v3, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    iget v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v3, :cond_13

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 985
    :cond_13
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 986
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 987
    const-string v3, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 988
    const-string v3, " wakeups:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 991
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 992
    .restart local v13       #fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1033
    .end local v9           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v10           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v13           #fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #len:I
    .end local v24           #tmpFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v25           #topFilters:[Lcom/android/server/AlarmManagerService$FilterStats;
    :catchall_0
    move-exception v3

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 994
    .restart local v9       #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v10       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v11       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v19       #len:I
    .restart local v24       #tmpFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v25       #topFilters:[Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_14
    :try_start_1
    move-object/from16 v0, v24

    invoke-static {v0, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 995
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_5
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_12

    .line 996
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 997
    .restart local v14       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v3, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v3, :cond_15

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 999
    :cond_15
    iget-wide v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1000
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1001
    const-string v3, " wakes "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1002
    const-string v3, " alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1003
    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_16

    .line 1004
    const-string v3, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    :cond_16
    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_17

    .line 1007
    const-string v3, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1009
    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 995
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 1013
    .end local v9           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v10           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v14           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v15           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_18
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    const-string v3, " power off alarms dump"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    .line 1017
    .local v21, poweroffPackages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1018
    .local v18, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1019
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1020
    .local v23, tempPackageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$AlarmPair;

    iget-wide v5, v3, Lcom/android/server/AlarmManagerService$AlarmPair;->mTriggerTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 1025
    .end local v23           #tempPackageName:Ljava/lang/String;
    :cond_19
    sget-object v3, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    #calls: Lcom/android/server/AlarmManagerService$AlarmPolicy;->reInitAlarmPolicy()V
    invoke-static {v3}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$1300(Lcom/android/server/AlarmManagerService$AlarmPolicy;)V

    .line 1026
    sget-object v3, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v3, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    if-eqz v3, :cond_1a

    .line 1027
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uhb on. cyc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget v4, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    :goto_7
    monitor-exit v26

    goto/16 :goto_0

    .line 1030
    :cond_1a
    const-string v3, "uhb off"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7
.end method

.method public enableDm(Z)I
    .locals 3
    .parameter "enable"

    .prologue
    .line 2089
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2090
    if-eqz p1, :cond_0

    .line 2091
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2104
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resendDmPendingList(Ljava/util/ArrayList;)V

    .line 2105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 2106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 2109
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    .line 2110
    monitor-exit v1

    .line 2111
    const/4 v0, -0x1

    return v0

    .line 2110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 447
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->close(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    .line 451
    return-void

    .line 449
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    throw v0
.end method

.method public getAlarmHeartBeat()I
    .locals 3

    .prologue
    .line 3226
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    if-eqz v0, :cond_0

    .line 3227
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAlarmHearBeat =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 3232
    :goto_0
    return v0

    .line 3231
    :cond_0
    const-string v0, "AlarmManager"

    const-string v1, "UHB is turned off, return 0."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlarmPolicyState()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3200
    const-string v0, "persist.sys.alarm.enable.uhb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 3201
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sput-boolean v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    .line 3205
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetAlarmPolicyState =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v2, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    return v0

    .line 3203
    :cond_0
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sput-boolean v1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    goto :goto_0
.end method

.method public getPhbState()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1225
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1226
    :try_start_0
    const-string v0, "persist.sys.phb.enable"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 1227
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    .line 1231
    :goto_0
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhbState =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    return v0

    .line 1229
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    goto :goto_0

    .line 1232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public lookForPackageFromAms(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 2441
    if-nez p1, :cond_0

    .line 2442
    const/4 v0, 0x0

    .line 2445
    :goto_0
    return v0

    .line 2444
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2445
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 2446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lookForPackageLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postTrimAlarm(Ljava/util/HashSet;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3301
    .local p1, pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3311
    :cond_0
    :goto_0
    return-void

    .line 3305
    :cond_1
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mTrimAlarmPkg:Ljava/util/HashSet;

    .line 3306
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    new-instance v1, Lcom/android/server/AlarmManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "operation"

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 674
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 673
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAllPendingAlarms()V
    .locals 3

    .prologue
    .line 1116
    const/16 v0, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1117
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission not allowed. uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :goto_0
    return-void

    .line 1120
    :cond_0
    const-string v0, "AlarmManager"

    const-string v1, "remove all pending alarms"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1123
    const/4 v0, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/AlarmManagerService;->removePendingAlarms(Ljava/lang/String;I)V

    .line 1124
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$MultiMap;->clear()V

    .line 1125
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeFromAms(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 2429
    if-nez p1, :cond_0

    .line 2435
    :goto_0
    return-void

    .line 2432
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2433
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 2434
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLocked(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 678
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 679
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 680
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 682
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 685
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 687
    return-void
.end method

.method public removeLocked(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public removeUserLocked(I)V
    .locals 1
    .parameter "userHandle"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 738
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 739
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 740
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 742
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 745
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 747
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 11
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "operation"

    .prologue
    const-wide/16 v4, 0x0

    .line 458
    if-nez p1, :cond_0

    const-string v0, "com.android.deskclock"

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    .line 460
    :cond_0
    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    .line 461
    :cond_1
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 462
    const-string v0, "AlarmManager"

    const-string v1, "alarm driver not open ,return!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_0
    return-void

    .line 465
    :cond_2
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm set type 7 8, package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    .line 468
    .local v9, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 469
    .local v10, setPackageName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 470
    .local v7, nowTime:J
    cmp-long v0, p2, v7

    if-gez v0, :cond_3

    .line 471
    const-string v0, "AlarmManager"

    const-string v1, "power off alarm set time is wrong!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarmMap:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmPair;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/android/server/AlarmManagerService$AlarmPair;-><init>(Lcom/android/server/AlarmManagerService;JLandroid/app/PendingIntent;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm()V

    .line 483
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    cmp-long v0, p2, v4

    if-nez v0, :cond_5

    .line 485
    invoke-virtual {p0, p4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 488
    :cond_5
    const/4 p1, 0x0

    .end local v7           #nowTime:J
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #setPackageName:Ljava/lang/String;
    :cond_6
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v6, p4

    .line 492
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setAlarmDynList(Ljava/lang/String;I)I
    .locals 6
    .parameter "pkg"
    .parameter "type"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 3240
    if-nez p1, :cond_0

    .line 3241
    const-string v3, "AlarmManager"

    const-string v4, "null pkg"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    :goto_0
    return v2

    .line 3245
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3246
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 3247
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permission not allowed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " try set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3250
    .end local v1           #pInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 3251
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 3252
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package not found, error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3256
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #pInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    if-nez p2, :cond_3

    .line 3257
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$4700()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3258
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blacklist already contains: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3259
    goto/16 :goto_0

    .line 3261
    :cond_2
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$4700()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3262
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add black list:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3263
    goto/16 :goto_0

    .line 3265
    :cond_3
    const/4 v4, 0x1

    if-ne v4, p2, :cond_4

    .line 3266
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$4700()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3267
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove black list:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3268
    goto/16 :goto_0

    .line 3270
    :cond_4
    const/4 v4, 0x2

    if-ne v4, p2, :cond_6

    .line 3271
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$4800()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3272
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Whitelist already contains: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3273
    goto/16 :goto_0

    .line 3275
    :cond_5
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$4800()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3276
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add white list:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3277
    goto/16 :goto_0

    .line 3279
    :cond_6
    const/4 v4, 0x4

    if-ne v4, p2, :cond_7

    .line 3280
    sget-object v2, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-static {}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$4800()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3281
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove white list:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3282
    goto/16 :goto_0

    .line 3284
    :cond_7
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid type. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setAlarmHeartBeat(I)Z
    .locals 3
    .parameter "hb"

    .prologue
    .line 3210
    const v0, 0x1d4c0

    if-lt p1, v0, :cond_1

    const v0, 0x927c0

    if-gt p1, v0, :cond_1

    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    if-eqz v0, :cond_1

    .line 3212
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlarmHeartBeat =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    if-eq p1, v0, :cond_0

    .line 3214
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sput p1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sAlignmentPeriod:I

    .line 3215
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->adjustAlarmListWhenUHBEnabled()V

    .line 3217
    :cond_0
    const/4 v0, 0x1

    .line 3221
    :goto_0
    return v0

    .line 3220
    :cond_1
    const-string v0, "AlarmManager"

    const-string v1, "Make sure UHB is turned on and the value is between 2 and 10 mininuts"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlarmPolicyState(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 3187
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetAlarmPolicyState =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sget-boolean v0, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    if-ne p1, v0, :cond_0

    .line 3197
    :goto_0
    return-void

    .line 3189
    :cond_0
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    sput-boolean p1, Lcom/android/server/AlarmManagerService$AlarmPolicy;->sNeedAdjustPolicy:Z

    .line 3190
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->adjustAlarmListWhenUHBEnabled()V

    .line 3192
    :goto_1
    if-eqz p1, :cond_2

    .line 3193
    const-string v0, "persist.sys.alarm.enable.uhb"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3191
    :cond_1
    sget-object v0, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->adjustAlarmListWhenUHBDisabled()V

    goto :goto_1

    .line 3195
    :cond_2
    const-string v0, "persist.sys.alarm.enable.uhb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAlarmsPending(Ljava/util/List;ZI)V
    .locals 7
    .parameter
    .parameter "pending"
    .parameter "allAlarms"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .local p1, pkgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1062
    const/16 v2, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1063
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "permission not allowed. uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1070
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set pending alarms: pending="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", allAlarms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1073
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1074
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1075
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1076
    .local v1, pkgName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1079
    if-eqz p2, :cond_6

    .line 1081
    if-eqz p3, :cond_3

    if-ne p3, v5, :cond_4

    .line 1082
    :cond_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->addPendingAlarms(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1083
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/android/server/AlarmManagerService$MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1084
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->addPendingAlarms(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1085
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/android/server/AlarmManagerService$MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1087
    :cond_4
    if-eqz p3, :cond_5

    if-ne p3, v6, :cond_2

    .line 1088
    :cond_5
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->addPendingAlarms(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1089
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/android/server/AlarmManagerService$MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1090
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->addPendingAlarms(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1091
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/android/server/AlarmManagerService$MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1109
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1095
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1       #pkgName:Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_7

    if-ne p3, v5, :cond_8

    .line 1096
    :cond_7
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->removePendingAlarms(Ljava/lang/String;I)V

    .line 1097
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/android/server/AlarmManagerService$MultiMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1098
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->removePendingAlarms(Ljava/lang/String;I)V

    .line 1099
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/android/server/AlarmManagerService$MultiMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1101
    :cond_8
    if-eqz p3, :cond_9

    if-ne p3, v6, :cond_2

    .line 1102
    :cond_9
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->removePendingAlarms(Ljava/lang/String;I)V

    .line 1103
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/android/server/AlarmManagerService$MultiMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1104
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/AlarmManagerService;->removePendingAlarms(Ljava/lang/String;I)V

    .line 1105
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/android/server/AlarmManagerService$MultiMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1109
    .end local v1           #pkgName:Ljava/lang/String;
    :cond_a
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 14
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 577
    if-nez p6, :cond_0

    .line 578
    const-string v2, "AlarmManager"

    const-string v3, "setInexactRepeating ignored because there is no intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_0
    return-void

    .line 582
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gtz v2, :cond_1

    .line 583
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInexactRepeating ignored because interval "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is invalid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 589
    :cond_1
    const-wide/32 v2, 0xdbba0

    rem-long v2, p4, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 590
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interval "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " not a quantum multiple"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 597
    :cond_2
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    if-nez p1, :cond_4

    :cond_3
    const/4 v9, 0x1

    .line 598
    .local v9, isRtc:Z
    :goto_1
    if-eqz v9, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v12, v2, v6

    .line 605
    .local v12, skew:J
    :goto_2
    sub-long v2, p2, v12

    const-wide/32 v6, 0xdbba0

    rem-long v10, v2, v6

    .line 606
    .local v10, offset:J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_6

    .line 607
    sub-long v2, p2, v10

    const-wide/32 v6, 0xdbba0

    add-long v4, v2, v6

    .line 613
    .local v4, adjustedTriggerTime:J
    :goto_3
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInexactRepeating: type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " interval="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " trigger="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " orig="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    .line 615
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 597
    .end local v4           #adjustedTriggerTime:J
    .end local v9           #isRtc:Z
    .end local v10           #offset:J
    .end local v12           #skew:J
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 598
    .restart local v9       #isRtc:Z
    :cond_5
    const-wide/16 v12, 0x0

    goto :goto_2

    .line 609
    .restart local v10       #offset:J
    .restart local v12       #skew:J
    :cond_6
    move-wide/from16 v4, p2

    .restart local v4       #adjustedTriggerTime:J
    goto :goto_3
.end method

.method public setPhbEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1202
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1203
    :try_start_0
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhbEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_0
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    if-ne v0, p1, :cond_1

    .line 1205
    monitor-exit v1

    .line 1222
    :goto_0
    return-void

    .line 1208
    :cond_1
    if-eqz p1, :cond_3

    .line 1209
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    if-nez v0, :cond_2

    .line 1211
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addPendingWakeupAlarms(Ljava/util/ArrayList;)V

    .line 1212
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addPendingWakeupAlarms(Ljava/util/ArrayList;)V

    .line 1214
    :cond_2
    const-string v0, "persist.sys.phb.enable"

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getPhbState()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    .line 1221
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1217
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->removePendingWakeupAlarms()V

    .line 1218
    const-string v0, "persist.sys.phb.enable"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 14
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 497
    if-nez p6, :cond_0

    .line 498
    const-string v10, "AlarmManager"

    const-string v11, "set/setRepeating ignored because there is no intent"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-boolean v10, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v10, :cond_1

    iget v10, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 503
    const-string v10, "AlarmManager"

    const-string v11, "IPO Shutdown so drop the alarm"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    :cond_1
    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 508
    :try_start_0
    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {v2}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    .line 509
    .local v2, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iput p1, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 510
    move-wide/from16 v0, p2

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 511
    move-wide/from16 v0, p4

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 512
    move-object/from16 v0, p6

    iput-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 515
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 517
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "set: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    .line 522
    .local v9, pkgName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 524
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 525
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 526
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 528
    .local v7, pendingAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v10, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-ne v10, p1, :cond_2

    .line 531
    iget-object v10, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 532
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_3
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "peeding alarm: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    monitor-exit v11

    goto/16 :goto_0

    .line 572
    .end local v2           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v7           #pendingAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 540
    .restart local v2       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v9       #pkgName:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mSetPendingAlarmPkg:Lcom/android/server/AlarmManagerService$MultiMap;

    invoke-virtual {v10, v9}, Lcom/android/server/AlarmManagerService$MultiMap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 541
    .local v8, pendingTypeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 542
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 543
    .local v6, itr:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 544
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 545
    .local v3, alarmType:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, p1, :cond_5

    .line 546
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pending alarm add: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    monitor-exit v11

    goto/16 :goto_0

    .line 554
    .end local v3           #alarmType:Ljava/lang/Integer;
    .end local v6           #itr:Ljava/util/Iterator;
    :cond_6
    sget-boolean v10, Lcom/android/server/AlarmManagerService;->bPhbEnabled:Z

    if-eqz v10, :cond_9

    .line 558
    iget v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v12, 0x2

    if-eq v10, v12, :cond_7

    iget v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v10, :cond_9

    :cond_7
    sget-boolean v10, Lcom/android/server/AlarmManagerService;->mNetworkAvailable:Z

    if-nez v10, :cond_9

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->isTargetAlarmMatched(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 562
    sget-boolean v10, Lcom/android/server/AlarmManagerService;->bPhbDebug:Z

    if-eqz v10, :cond_8

    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v13}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to mPendingWakeupAlarms when setRepeating"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_8
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPendingWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    monitor-exit v11

    goto/16 :goto_0

    .line 568
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v4

    .line 569
    .local v4, index:I
    if-nez v4, :cond_a

    .line 570
    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 572
    :cond_a
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setTime(J)V
    .locals 3
    .parameter "millis"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 624
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 10
    .parameter "tz"

    .prologue
    .line 627
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.SET_TIME_ZONE"

    const-string v9, "setTimeZone"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 633
    .local v3, oldId:J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-eqz v7, :cond_0

    .line 663
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    :goto_0
    return-void

    .line 634
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 637
    .local v6, zone:Ljava/util/TimeZone;
    const/4 v5, 0x0

    .line 638
    .local v5, timeZoneWasChanged:Z
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 639
    :try_start_2
    const-string v7, "persist.sys.timezone"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, current:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 642
    :cond_1
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timezone changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 v5, 0x1

    .line 645
    const-string v7, "persist.sys.timezone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 651
    .local v1, gmtOffset:I
    iget v7, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const v8, 0xea60

    div-int v8, v1, v8

    neg-int v8, v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    .line 652
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 654
    const/4 v7, 0x0

    :try_start_3
    invoke-static {v7}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 656
    if-eqz v5, :cond_3

    .line 657
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 659
    const-string v7, "time-zone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 663
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 652
    .end local v0           #current:Ljava/lang/String;
    .end local v1           #gmtOffset:I
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 663
    .end local v5           #timeZoneWasChanged:Z
    .end local v6           #zone:Ljava/util/TimeZone;
    :catchall_1
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pi"

    .prologue
    .line 1811
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 1813
    .local v0, uid:I
    if-ltz v0, :cond_0

    .line 1814
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1822
    .end local v0           #uid:I
    :goto_0
    return-void

    .line 1817
    :catch_0
    move-exception v1

    .line 1821
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_0
.end method

.method public timeToNextAlarm()J
    .locals 9

    .prologue
    .line 831
    const-wide v3, 0x7fffffffffffffffL

    .line 832
    .local v3, nextAlarm:J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 833
    const/4 v2, 0x0

    .line 834
    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    .line 835
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 836
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 837
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 838
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v5, v7, v3

    if-gez v5, :cond_0

    .line 839
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 834
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 843
    .end local v1           #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    monitor-exit v6

    .line 844
    return-wide v3

    .line 843
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
