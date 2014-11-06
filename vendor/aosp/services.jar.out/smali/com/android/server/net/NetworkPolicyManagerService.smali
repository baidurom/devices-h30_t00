.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field public static final ACTION_POLICYMGR_CREATED:Ljava/lang/String; = "com.mediatek.server.action.ACTION_POLICY_CREATED"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_ACTIVE:Ljava/lang/String; = "active"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_FOREGROUND_ACTIVITIES_CHANGED:I = 0x3

.field private static final MSG_INTERFACE_DOWN:I = 0x9

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_PROCESS_DIED:I = 0x4

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "NetworkPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa


# instance fields
.field private iTel:Lcom/android/internal/telephony/ITelephony;

.field private mActiveNotifs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDataActiveSlot:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsInSlot:[Z

.field private mIsPolicyModified:Z

.field private mIsSlotEnable:[Z

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileDataEnabled:Z

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNetworkPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private mOverLimitNotified:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private volatile mRestrictBackground:Z

.field private final mRulesLock:Ljava/lang/Object;

.field private volatile mScreenOn:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldCheckNetworkEnable:Z

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriberId:[Ljava/lang/String;

.field private final mSuppressDefaultPolicy:Z

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidForeground:Landroid/util/SparseBooleanArray;

.field private mUidPidForeground:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mUidPolicy:Landroid/util/SparseIntArray;

.field private mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private supportSimNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 9
    .parameter "context"
    .parameter "activityManager"
    .parameter "powerManager"
    .parameter "networkStats"
    .parameter "networkManagement"

    .prologue
    .line 333
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 3
    .parameter "context"
    .parameter "activityManager"
    .parameter "powerManager"
    .parameter "networkStats"
    .parameter "networkManagement"
    .parameter "time"
    .parameter "systemDir"
    .parameter "suppressDefaultPolicy"

    .prologue
    .line 344
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 280
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    .line 282
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    .line 285
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 287
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 290
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 292
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    .line 295
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    .line 298
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 299
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    .line 302
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    .line 462
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 493
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 510
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 521
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 541
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 559
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 585
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 608
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 622
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 636
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 664
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 706
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1052
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 2319
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 345
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 346
    const-string v0, "missing activityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 347
    const-string v0, "missing powerManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    .line 348
    const-string v0, "missing networkStats"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkStatsService;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 349
    const-string v0, "missing networkManagement"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 350
    const-string v0, "missing TrustedTime"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TrustedTime;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    .line 352
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 353
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 354
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 356
    iput-boolean p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 358
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "netpolicy.xml"

    invoke-direct {v1, p7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 361
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    .line 362
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->initDataUsageSimInfo(I)V

    .line 367
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDataUsageSimInsert()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDataUsageSimIMSI()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseIntArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removePoliciesForUserLocked(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateMobileDataEnableStatus()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    return-void
.end method

.method private addDefaultPolicy(Ljava/lang/String;Z)V
    .locals 16
    .parameter "subscriberId"
    .parameter "active"

    .prologue
    .line 2656
    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no policy for active mobile network; generating default policy for subscriberId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0036

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v7, v7

    const-wide/32 v9, 0x100000

    mul-long v5, v7, v9

    .line 2663
    .local v5, warningBytes:J
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 2664
    .local v15, time:Landroid/text/format/Time;
    invoke-virtual {v15}, Landroid/text/format/Time;->setToNow()V

    .line 2666
    iget v3, v15, Landroid/text/format/Time;->monthDay:I

    .line 2667
    .local v3, cycleDay:I
    iget-object v4, v15, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2669
    .local v4, cycleTimezone:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 2671
    .local v2, template:Landroid/net/NetworkTemplate;
    new-instance v1, Landroid/net/NetworkPolicy;

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 2674
    .local v1, policy:Landroid/net/NetworkPolicy;
    move/from16 v0, p2

    iput-boolean v0, v1, Landroid/net/NetworkPolicy;->active:Z

    .line 2675
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    .line 2677
    return-void
.end method

.method private addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .locals 2
    .parameter "policy"

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 1907
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1908
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1909
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1910
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 2555
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .parameter "template"

    .prologue
    .line 2565
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2566
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2568
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2569
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2570
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .parameter "policy"
    .parameter "type"

    .prologue
    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .parameter "template"

    .prologue
    .line 2559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2560
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2561
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .parameter "template"

    .prologue
    .line 2574
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2575
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2577
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2578
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2579
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 1040
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    .end local v0           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 1043
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static collectKeys(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .parameter "source"
    .parameter "target"

    .prologue
    .line 2595
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2596
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2597
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2599
    :cond_0
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .parameter "source"
    .parameter "target"

    .prologue
    .line 2588
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2589
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2590
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2592
    :cond_0
    return-void
.end method

.method private computeUidForegroundLocked(I)V
    .locals 7
    .parameter "uid"

    .prologue
    .line 2201
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 2204
    .local v2, pidForeground:Landroid/util/SparseBooleanArray;
    const/4 v4, 0x0

    .line 2205
    .local v4, uidForeground:Z
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 2206
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 2207
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2208
    const/4 v4, 0x1

    .line 2213
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 2214
    .local v1, oldUidForeground:Z
    if-eq v1, v4, :cond_1

    .line 2216
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2217
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2219
    :cond_1
    return-void

    .line 2206
    .end local v1           #oldUidForeground:Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static dumpSparseBooleanArray(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .parameter "fout"
    .parameter "value"

    .prologue
    .line 2602
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2603
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2604
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2606
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2604
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2608
    :cond_1
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2609
    return-void
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 20
    .parameter "policy"
    .parameter "type"
    .parameter "totalBytes"

    .prologue
    .line 887
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v4

    .line 888
    .local v4, tag:Ljava/lang/String;
    new-instance v10, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 889
    .local v10, builder:Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 890
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 893
    .local v14, res:Landroid/content/res/Resources;
    const v2, 0x10404ea

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 894
    .local v9, body:Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_0

    .line 987
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 988
    .local v3, packageName:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 990
    .local v7, idReceived:[I
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, v10}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v6

    .line 992
    .local v6, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    .end local v3           #packageName:Ljava/lang/String;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #idReceived:[I
    :goto_1
    return-void

    .line 896
    :pswitch_0
    const v2, 0x10404e9

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 897
    .local v16, title:Ljava/lang/CharSequence;
    const v2, 0x10404ea

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 899
    const v2, 0x1080078

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 900
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 901
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 902
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 904
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v15

    .line 905
    .local v15, snoozeIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x800

    invoke-static {v2, v5, v15, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 908
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v17

    .line 909
    .local v17, viewIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x800

    move-object/from16 v0, v17

    invoke-static {v2, v5, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 915
    .end local v15           #snoozeIntent:Landroid/content/Intent;
    .end local v16           #title:Ljava/lang/CharSequence;
    .end local v17           #viewIntent:Landroid/content/Intent;
    :pswitch_1
    const v2, 0x10404ef

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 918
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 932
    const/16 v16, 0x0

    .line 936
    .restart local v16       #title:Ljava/lang/CharSequence;
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 937
    const v2, 0x108051a

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 938
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 939
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 940
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 942
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 943
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x800

    invoke-static {v2, v5, v11, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 920
    .end local v11           #intent:Landroid/content/Intent;
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_2
    const v2, 0x10404eb

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 921
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 923
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x10404ec

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 924
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 926
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_4
    const v2, 0x10404ed

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 927
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 929
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_5
    const v2, 0x10404ee

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 930
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 948
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v18, v0

    sub-long v12, p3, v18

    .line 949
    .local v12, overBytes:J
    const v2, 0x10404f4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v8

    invoke-virtual {v14, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 953
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 967
    const/16 v16, 0x0

    .line 971
    .restart local v16       #title:Ljava/lang/CharSequence;
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 972
    const v2, 0x1080078

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 973
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 974
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 975
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 977
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 978
    .restart local v11       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x800

    invoke-static {v2, v5, v11, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 955
    .end local v11           #intent:Landroid/content/Intent;
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_7
    const v2, 0x10404f0

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 956
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 958
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_8
    const v2, 0x10404f1

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 959
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 961
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_9
    const v2, 0x10404f2

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 962
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 964
    .end local v16           #title:Ljava/lang/CharSequence;
    :pswitch_a
    const v2, 0x10404f3

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 965
    .restart local v16       #title:Ljava/lang/CharSequence;
    goto :goto_3

    .line 996
    .end local v12           #overBytes:J
    .end local v16           #title:Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 894
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 918
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 953
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .locals 12
    .parameter "tag"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1006
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1007
    .local v10, res:Landroid/content/res/Resources;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1009
    .local v8, builder:Landroid/app/Notification$Builder;
    const v0, 0x10404f5

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1010
    .local v11, title:Ljava/lang/CharSequence;
    const v0, 0x10404f6

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1012
    .local v7, body:Ljava/lang/CharSequence;
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1013
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1014
    const v0, 0x1080078

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1015
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1016
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1017
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1019
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->buildAllowBackgroundDataIntent()Landroid/content/Intent;

    move-result-object v9

    .line 1020
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v0, v3, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1026
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 1028
    .local v5, idReceived:[I
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v3, 0x0

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1030
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    .end local v1           #packageName:Ljava/lang/String;
    .end local v5           #idReceived:[I
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1439
    const-string v1, "NetworkPolicy"

    const-string v2, "ensureActiveMobilePolicyLocked()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v1, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    const/4 v11, 0x0

    .line 1444
    .local v11, policyChange:Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 1445
    .local v12, tele:Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 1449
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_2

    .line 1450
    const-string v1, "NetworkPolicy"

    const-string v2, "ensureActiveMobilePolicyLocked ITelephony is not ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1454
    :cond_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v7, v1, :cond_b

    .line 1456
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, v7}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1454
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1457
    :cond_4
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1, v7}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 1458
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureActiveMobilePolicyLocked getSimState != SIM_STATE_READY no action SlotId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1481
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1462
    :cond_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v3, v1, v7

    .line 1463
    .local v3, subscriberId:Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1465
    .local v0, probeIdent:Landroid/net/NetworkIdentity;
    if-eqz v3, :cond_6

    const-string v1, ""

    if-ne v3, v1, :cond_7

    .line 1466
    :cond_6
    const-string v1, "NetworkPolicy"

    const-string v2, "ensureActiveMobilePolicyLocked subscriberId=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1470
    :cond_7
    const/4 v9, 0x0

    .line 1471
    .local v9, mobileDefined:Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 1472
    .local v10, policy:Landroid/net/NetworkPolicy;
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1473
    const/4 v9, 0x1

    goto :goto_3

    .line 1476
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    :cond_9
    if-nez v9, :cond_3

    .line 1477
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    if-ne v1, v7, :cond_a

    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultPolicy(Ljava/lang/String;Z)V

    .line 1479
    :goto_4
    const/4 v11, 0x1

    goto :goto_2

    .line 1478
    :cond_a
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultPolicy(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1487
    .end local v0           #probeIdent:Landroid/net/NetworkIdentity;
    .end local v3           #subscriberId:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #mobileDefined:Z
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMobileDataEnabled:Z

    if-ne v1, v14, :cond_e

    .line 1488
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 1489
    .restart local v10       #policy:Landroid/net/NetworkPolicy;
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_c

    .line 1490
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSlotBySubscriberId(Ljava/lang/String;)I

    move-result v6

    .line 1491
    .local v6, currentslot:I
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    if-ne v1, v6, :cond_d

    .line 1492
    iput-boolean v14, v10, Landroid/net/NetworkPolicy;->active:Z

    .line 1493
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureActiveMobilePolicyLocked A policy"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1495
    :cond_d
    iput-boolean v13, v10, Landroid/net/NetworkPolicy;->active:Z

    .line 1496
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureActiveMobilePolicyLocked B policy"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1530
    .end local v6           #currentslot:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    :cond_e
    if-eqz v11, :cond_0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendBroadcast()V

    goto/16 :goto_0
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .parameter "ident"

    .prologue
    .line 2016
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 2017
    .local v1, policy:Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2021
    .end local v1           #policy:Landroid/net/NetworkPolicy;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getActiveSubscriberId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2687
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2688
    .local v2, telephony:Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 2690
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateMobileDataEnableStatus()V

    .line 2692
    const-string v1, ""

    .line 2694
    .local v1, subsId:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_1

    .line 2695
    const-string v3, "NetworkPolicy"

    const-string v4, "updateMobileDataEnableStatus ITelephony is not ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_0
    :goto_0
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveSubscriberId subsId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    return-object v1

    .line 2696
    :cond_1
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2699
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    iget v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2700
    :catch_0
    move-exception v0

    .line 2702
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NetworkPolicy"

    const-string v4, "getActiveSubscriberId RemoteException Itelphony is not ready"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getITelephony()V
    .locals 1

    .prologue
    .line 2720
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    .line 2721
    return-void
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 23
    .parameter "state"

    .prologue
    .line 2043
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getActiveSubscriberId()Ljava/lang/String;

    move-result-object v20

    .line 2044
    .local v20, subId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v3, v0, v1}, Landroid/net/NetworkIdentity;->buildNetworkIdentityGemini(Landroid/content/Context;Landroid/net/NetworkState;Ljava/lang/String;)Landroid/net/NetworkIdentity;

    move-result-object v18

    .line 2045
    .local v18, ident:Landroid/net/NetworkIdentity;
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNetworkQuotaInfo for sim:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2054
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v19

    .line 2055
    .local v19, policy:Landroid/net/NetworkPolicy;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2057
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2059
    :cond_0
    const/4 v9, 0x0

    .line 2075
    :goto_0
    return-object v9

    .line 2055
    .end local v19           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2062
    .restart local v19       #policy:Landroid/net/NetworkPolicy;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v16

    .line 2065
    .local v16, currentTime:J
    move-wide/from16 v0, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v5

    .line 2066
    .local v5, start:J
    move-wide/from16 v7, v16

    .line 2067
    .local v7, end:J
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 2070
    .local v10, totalBytes:J
    move-object/from16 v0, v19

    iget-wide v3, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v21, -0x1

    cmp-long v3, v3, v21

    if-eqz v3, :cond_2

    move-object/from16 v0, v19

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2072
    .local v12, softLimitBytes:J
    :goto_1
    move-object/from16 v0, v19

    iget-wide v3, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v21, -0x1

    cmp-long v3, v3, v21

    if-eqz v3, :cond_3

    move-object/from16 v0, v19

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2075
    .local v14, hardLimitBytes:J
    :goto_2
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    goto :goto_0

    .line 2070
    .end local v12           #softLimitBytes:J
    .end local v14           #hardLimitBytes:J
    :cond_2
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 2072
    .restart local v12       #softLimitBytes:J
    :cond_3
    const-wide/16 v14, -0x1

    goto :goto_2
.end method

.method private getSlotBySubscriberId(Ljava/lang/String;)I
    .locals 4
    .parameter "subscriberId"

    .prologue
    const/4 v1, -0x1

    .line 2725
    if-nez p1, :cond_1

    move v0, v1

    .line 2732
    :cond_0
    :goto_0
    return v0

    .line 2726
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v0, v2, :cond_3

    .line 2727
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    aget-boolean v2, v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2728
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2726
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2732
    goto :goto_0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 338
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 9
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2514
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v7

    .line 2515
    .local v7, ret:J
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getTotalBytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2523
    .end local v7           #ret:J
    :goto_0
    return-wide v7

    .line 2517
    :catch_0
    move-exception v6

    .line 2518
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    const-wide/16 v7, 0x0

    goto :goto_0

    .line 2520
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .line 2521
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem reading network stats RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    const-wide/16 v7, 0x0

    goto :goto_0
.end method

.method private initDataUsageSimInfo(I)V
    .locals 5
    .parameter "num"

    .prologue
    const/4 v4, 0x0

    .line 2750
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDataUsageSimInfo num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    .line 2752
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    .line 2753
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    .line 2754
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 2755
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    aput-boolean v4, v1, v0

    .line 2756
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 2757
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    aput-boolean v4, v1, v0

    .line 2754
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2759
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    .line 2760
    return-void
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 2528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2530
    .local v1, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2535
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2533
    return v3

    .line 2531
    :catch_0
    move-exception v0

    .line 2533
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0

    .line 2535
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isInsertSubscriberId(Ljava/lang/String;)Z
    .locals 6
    .parameter "subscriberId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2735
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSlotBySubscriberId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    if-nez p1, :cond_1

    .line 2743
    :cond_0
    :goto_0
    return v1

    .line 2737
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v0, v3, :cond_0

    .line 2738
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    aget-boolean v3, v3, v0

    if-ne v3, v2, :cond_2

    .line 2739
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 2737
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .locals 5
    .parameter "template"

    .prologue
    const/4 v2, 0x0

    .line 810
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 813
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 854
    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    .line 823
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 825
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_2

    .line 826
    const-string v3, "NetworkPolicy"

    const-string v4, "isTemplateRelevant ITelephony is not ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 838
    :catch_0
    move-exception v2

    .line 842
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 829
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getSlotBySubscriberId(Ljava/lang/String;)I

    move-result v0

    .line 830
    .local v0, slotId:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 834
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 835
    const-string v3, "NetworkPolicy"

    const-string v4, "isTemplateRelevant getSimState != SIM_STATE_READY no action"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 813
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    .line 2272
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3fb

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2274
    :cond_0
    const/4 v0, 0x1

    .line 2277
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeRefreshTrustedTime()V
    .locals 4

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v0, :cond_0

    .line 2545
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 2547
    :cond_0
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 2
    .parameter "template"

    .prologue
    .line 862
    const-string v0, "NetworkPolicy"

    const-string v1, "notifyOverLimitLocked overlimit"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    const-string v0, "NetworkPolicy"

    const-string v1, "notifyOverLimitLocked buildNetworkOverLimitIntent"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 866
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_0
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .parameter "template"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 872
    return-void
.end method

.method private performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 8
    .parameter "template"
    .parameter "type"

    .prologue
    const/4 v7, 0x1

    .line 1940
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1941
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .line 1942
    .local v0, currentTime:J
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1946
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 1947
    .local v3, policy:Landroid/net/NetworkPolicy;
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_0

    .line 1948
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/net/NetworkPolicy;->active:Z

    goto :goto_0

    .line 1984
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1953
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 1954
    .restart local v3       #policy:Landroid/net/NetworkPolicy;
    if-nez v3, :cond_2

    .line 1955
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to find policy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1959
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/net/NetworkPolicy;->active:Z

    .line 1960
    packed-switch p2, :pswitch_data_0

    .line 1968
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "unexpected type"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1962
    :pswitch_0
    iput-wide v0, v3, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 1971
    :goto_1
    if-ne p2, v7, :cond_3

    .line 1972
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    .line 1973
    const-string v4, "NetworkPolicy"

    const-string v6, " performSnooze call updateNetworkEnabledLocked true"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 1981
    :goto_2
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1982
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1983
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1984
    monitor-exit v5

    .line 1985
    return-void

    .line 1965
    :pswitch_1
    iput-wide v0, v3, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    goto :goto_1

    .line 1976
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    .line 1977
    const-string v4, "NetworkPolicy"

    const-string v6, " performSnooze call updateNetworkEnabledLocked false"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1960
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readPolicyLocked()V
    .locals 32

    .prologue
    .line 1533
    const-string v29, "NetworkPolicy"

    const-string v30, "readPolicyLocked()"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->clear()V

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseIntArray;->clear()V

    .line 1539
    const/16 v20, 0x0

    .line 1541
    .local v20, fis:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v20

    .line 1542
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v21

    .line 1543
    .local v21, in:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1546
    const/16 v28, 0x1

    .line 1547
    .local v28, version:I
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, type:I
    const/16 v29, 0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 1548
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 1549
    .local v25, tag:Ljava/lang/String;
    const/16 v29, 0x2

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 1550
    const-string v29, "policy-list"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1551
    const-string v29, "version"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1552
    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_2

    .line 1553
    const-string v29, "restrictBackground"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1657
    .end local v21           #in:Lorg/xmlpull/v1/XmlPullParser;
    .end local v25           #tag:Ljava/lang/String;
    .end local v26           #type:I
    .end local v28           #version:I
    :catch_0
    move-exception v19

    .line 1659
    .local v19, e:Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1668
    .end local v19           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1670
    return-void

    .line 1556
    .restart local v21       #in:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25       #tag:Ljava/lang/String;
    .restart local v26       #type:I
    .restart local v28       #version:I
    :cond_2
    const/16 v29, 0x0

    :try_start_2
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1660
    .end local v21           #in:Lorg/xmlpull/v1/XmlPullParser;
    .end local v25           #tag:Ljava/lang/String;
    .end local v26           #type:I
    .end local v28           #version:I
    :catch_1
    move-exception v19

    .line 1663
    .local v19, e:Ljava/io/IOException;
    :try_start_3
    const-string v29, "NetworkPolicy"

    const-string v30, "problem reading network policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1668
    .end local v19           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v29

    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v29

    .line 1559
    .restart local v21       #in:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25       #tag:Ljava/lang/String;
    .restart local v26       #type:I
    .restart local v28       #version:I
    :cond_3
    :try_start_4
    const-string v29, "network-policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 1560
    const-string v29, "networkTemplate"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v23

    .line 1561
    .local v23, networkTemplate:I
    const/16 v29, 0x0

    const-string v30, "subscriberId"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1563
    .local v24, subscriberId:Ljava/lang/String;
    const/16 v29, 0x9

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_4

    .line 1564
    const/16 v29, 0x0

    const-string v30, "networkId"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1568
    .local v22, networkId:Ljava/lang/String;
    :goto_2
    const-string v29, "cycleDay"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 1570
    .local v5, cycleDay:I
    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_5

    .line 1571
    const/16 v29, 0x0

    const-string v30, "cycleTimezone"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1575
    .local v6, cycleTimezone:Ljava/lang/String;
    :goto_3
    const-string v29, "warningBytes"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    .line 1576
    .local v7, warningBytes:J
    const-string v29, "limitBytes"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v9

    .line 1578
    .local v9, limitBytes:J
    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_6

    .line 1579
    const-string v29, "lastLimitSnooze"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    .line 1586
    .local v13, lastLimitSnooze:J
    :goto_4
    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    .line 1587
    const-string v29, "metered"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    .line 1600
    .local v15, metered:Z
    :goto_5
    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_9

    .line 1601
    const-string v29, "lastWarningSnooze"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v11

    .line 1606
    .local v11, lastWarningSnooze:J
    :goto_6
    const/16 v29, 0x7

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_a

    .line 1607
    const-string v29, "inferred"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 1615
    .local v16, inferred:Z
    :goto_7
    const-string v29, "active"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 1620
    .local v17, active:Z
    new-instance v4, Landroid/net/NetworkTemplate;

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v4, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1622
    .local v4, template:Landroid/net/NetworkTemplate;
    new-instance v3, Landroid/net/NetworkPolicy;

    invoke-direct/range {v3 .. v16}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1626
    .local v3, policy:Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    move/from16 v0, v17

    iput-boolean v0, v3, Landroid/net/NetworkPolicy;->active:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1664
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    .end local v4           #template:Landroid/net/NetworkTemplate;
    .end local v5           #cycleDay:I
    .end local v6           #cycleTimezone:Ljava/lang/String;
    .end local v7           #warningBytes:J
    .end local v9           #limitBytes:J
    .end local v11           #lastWarningSnooze:J
    .end local v13           #lastLimitSnooze:J
    .end local v15           #metered:Z
    .end local v16           #inferred:Z
    .end local v17           #active:Z
    .end local v21           #in:Lorg/xmlpull/v1/XmlPullParser;
    .end local v22           #networkId:Ljava/lang/String;
    .end local v23           #networkTemplate:I
    .end local v24           #subscriberId:Ljava/lang/String;
    .end local v25           #tag:Ljava/lang/String;
    .end local v26           #type:I
    .end local v28           #version:I
    :catch_2
    move-exception v19

    .line 1666
    .local v19, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v29, "NetworkPolicy"

    const-string v30, "problem reading network policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1566
    .end local v19           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v21       #in:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23       #networkTemplate:I
    .restart local v24       #subscriberId:Ljava/lang/String;
    .restart local v25       #tag:Ljava/lang/String;
    .restart local v26       #type:I
    .restart local v28       #version:I
    :cond_4
    const/16 v22, 0x0

    .restart local v22       #networkId:Ljava/lang/String;
    goto/16 :goto_2

    .line 1573
    .restart local v5       #cycleDay:I
    :cond_5
    :try_start_6
    const-string v6, "UTC"

    .restart local v6       #cycleTimezone:Ljava/lang/String;
    goto/16 :goto_3

    .line 1580
    .restart local v7       #warningBytes:J
    .restart local v9       #limitBytes:J
    :cond_6
    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    .line 1581
    const-string v29, "lastSnooze"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    .restart local v13       #lastLimitSnooze:J
    goto/16 :goto_4

    .line 1583
    .end local v13           #lastLimitSnooze:J
    :cond_7
    const-wide/16 v13, -0x1

    .restart local v13       #lastLimitSnooze:J
    goto/16 :goto_4

    .line 1589
    :cond_8
    packed-switch v23, :pswitch_data_0

    .line 1596
    const/4 v15, 0x0

    .restart local v15       #metered:Z
    goto/16 :goto_5

    .line 1593
    .end local v15           #metered:Z
    :pswitch_0
    const/4 v15, 0x1

    .line 1594
    .restart local v15       #metered:Z
    goto/16 :goto_5

    .line 1603
    :cond_9
    const-wide/16 v11, -0x1

    .restart local v11       #lastWarningSnooze:J
    goto :goto_6

    .line 1609
    :cond_a
    const/16 v16, 0x0

    .restart local v16       #inferred:Z
    goto :goto_7

    .line 1633
    .end local v5           #cycleDay:I
    .end local v6           #cycleTimezone:Ljava/lang/String;
    .end local v7           #warningBytes:J
    .end local v9           #limitBytes:J
    .end local v11           #lastWarningSnooze:J
    .end local v13           #lastLimitSnooze:J
    .end local v15           #metered:Z
    .end local v16           #inferred:Z
    .end local v22           #networkId:Ljava/lang/String;
    .end local v23           #networkTemplate:I
    .end local v24           #subscriberId:Ljava/lang/String;
    :cond_b
    const-string v29, "uid-policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 1634
    const-string v29, "uid"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v27

    .line 1635
    .local v27, uid:I
    const-string v29, "policy"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 1637
    .local v3, policy:I
    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 1638
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    goto/16 :goto_0

    .line 1640
    :cond_c
    const-string v29, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1642
    .end local v3           #policy:I
    .end local v27           #uid:I
    :cond_d
    const-string v29, "app-policy"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 1643
    const-string v29, "appId"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    .line 1644
    .local v18, appId:I
    const-string v29, "policy"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 1647
    .restart local v3       #policy:I
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v27

    .line 1648
    .restart local v27       #uid:I
    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 1649
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    goto/16 :goto_0

    .line 1651
    :cond_e
    const-string v29, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1589
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 4
    .parameter "iface"

    .prologue
    .line 2480
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2487
    :goto_0
    return-void

    .line 2481
    :catch_0
    move-exception v0

    .line 2483
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem removing interface quota:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2484
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private removePoliciesForUserLocked(I)V
    .locals 8
    .parameter "userId"

    .prologue
    .line 1816
    const-string v6, "NetworkPolicy"

    const-string v7, "removePoliciesForUserLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 1819
    .local v5, uids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1820
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 1821
    .local v4, uid:I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 1822
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 1819
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1826
    .end local v4           #uid:I
    :cond_1
    array-length v6, v5

    if-lez v6, :cond_3

    .line 1827
    move-object v0, v5

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 1828
    .restart local v4       #uid:I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1829
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1827
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1831
    .end local v4           #uid:I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1833
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    return-void
.end method

.method private sendBroadcast()V
    .locals 3

    .prologue
    .line 2843
    const-string v1, "NetworkPolicy"

    const-string v2, "sendBroadcast ACTION_POLICYMGR_CREATED"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2845
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2846
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2847
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2848
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .parameter "iface"
    .parameter "quotaBytes"

    .prologue
    .line 2467
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInterfaceQuota iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Bytes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2476
    :goto_0
    return-void

    .line 2470
    :catch_0
    move-exception v0

    .line 2472
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem setting interface quota:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2473
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 5
    .parameter "template"
    .parameter "enabled"

    .prologue
    const/4 v3, -0x1

    .line 1183
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1184
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 1186
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unexpected template"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1197
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_0

    .line 1198
    const-string v2, "NetworkPolicy"

    const-string v3, "setNetworkTemplateEnabled ITelephony is not ready"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :goto_0
    return-void

    .line 1201
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getSlotBySubscriberId(Ljava/lang/String;)I

    move-result v0

    .line 1202
    .local v0, slotId:I
    if-ne v0, v3, :cond_1

    .line 1203
    const-string v2, "NetworkPolicy"

    const-string v3, "setNetworkTemplateEnabled getSlotById =-1"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1219
    .end local v0           #slotId:I
    :catch_0
    move-exception v2

    .line 1247
    :goto_1
    const/4 v2, 0x6

    invoke-direct {p0, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 1207
    .restart local v0       #slotId:I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 1208
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimState != SIM_STATE_READY no action1 SlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1211
    :cond_2
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNetworkTemplateEnabled ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    if-eqz p2, :cond_3

    .line 1213
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v2, v0}, Landroid/net/IConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_1

    .line 1215
    :cond_3
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->setMobileDataEnabledGemini(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1251
    .end local v0           #slotId:I
    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {p0, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 1254
    :pswitch_2
    const/16 v2, 0x9

    invoke-direct {p0, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    .line 1186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPolicyDataEnable(IZ)V
    .locals 1
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 2505
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setPolicyDataEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2509
    :goto_0
    return-void

    .line 2506
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUidNetworkRules(IZ)V
    .locals 3
    .parameter "uid"
    .parameter "rejectOnQuotaInterfaces"

    .prologue
    .line 2491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2498
    :goto_0
    return-void

    .line 2492
    :catch_0
    move-exception v0

    .line 2494
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2495
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setUidPolicyUnchecked(IIZ)V
    .locals 3
    .parameter "uid"
    .parameter "policy"
    .parameter "persist"

    .prologue
    .line 1773
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1774
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v0

    .line 1775
    .local v0, oldPolicy:I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1778
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 1779
    if-eqz p3, :cond_0

    .line 1780
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1782
    :cond_0
    monitor-exit v2

    .line 1783
    return-void

    .line 1782
    .end local v0           #oldPolicy:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateDataUsageSimIMSI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2788
    const-string v3, "NetworkPolicy"

    const-string v4, "updateDataUsageSimIMSI"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2792
    .local v2, telephony:Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 2793
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_1

    .line 2794
    const-string v3, "NetworkPolicy"

    const-string v4, "updateDataUsageSimIMSI Itelphony is not ready"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    :cond_0
    return-void

    .line 2798
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v1, v3, :cond_0

    .line 2799
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    aget-boolean v3, v3, v1

    if-ne v3, v6, :cond_3

    .line 2802
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2807
    :goto_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, ""

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v1

    .line 2814
    :goto_2
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataUsageSimIMSI mSubscriberId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriberId:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2803
    :catch_0
    move-exception v0

    .line 2805
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NetworkPolicy"

    const-string v4, "updateDataUsageSimIMSI RemoteException Itelphony is not ready"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2808
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    aput-boolean v6, v3, v1

    goto :goto_2
.end method

.method private updateDataUsageSimInsert()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2765
    const-string v2, "NetworkPolicy"

    const-string v3, "updateDataUsageSimInsert"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 2768
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 2769
    const-string v2, "NetworkPolicy"

    const-string v3, "updateDataUsageSimInsert Itelphony is not ready"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_0
    return-void

    .line 2772
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v1, v2, :cond_0

    .line 2773
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsSlotEnable:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 2775
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 2776
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 2777
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataUsageSimInsert mSimSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is inserted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2772
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2779
    :catch_0
    move-exception v0

    .line 2781
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NetworkPolicy"

    const-string v3, "updateDataUsageSimInsert RemoteException Itelphony is not ready"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateMobileDataEnableStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2822
    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    .line 2823
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMobileDataEnabled:Z

    .line 2824
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->supportSimNum:I

    if-ge v0, v1, :cond_1

    .line 2825
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsInSlot:[Z

    aget-boolean v1, v1, v0

    if-ne v1, v4, :cond_0

    .line 2827
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v1, v0}, Landroid/net/IConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2828
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    .line 2829
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMobileDataEnabled:Z

    .line 2830
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMobileDataEnableStatus mDataActiveSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDataActiveSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2824
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2838
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 2841
    :cond_1
    return-void
.end method

.method private updateNetworkEnabledLocked(Z)V
    .locals 21
    .parameter "isIgnore"

    .prologue
    .line 1080
    const-string v2, "NetworkPolicy"

    const-string v3, "updateNetworkEnabledLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/16 v16, 0x1

    .line 1099
    .local v16, shoudlCheckMobile:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 1100
    .local v8, currentTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkPolicy;

    .line 1102
    .local v14, policy:Landroid/net/NetworkPolicy;
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " checking policy:"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v11

    .line 1108
    .local v11, matchRule:I
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v15

    .line 1109
    .local v15, policySubId:Ljava/lang/String;
    const/4 v2, 0x4

    if-ne v11, v2, :cond_2

    .line 1110
    const-string v2, "NetworkPolicy"

    const-string v3, " this is wifi policy"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_0
    iget-wide v2, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v19, -0x1

    cmp-long v2, v2, v19

    if-eqz v2, :cond_1

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1131
    :cond_1
    if-eqz p1, :cond_4

    const/4 v2, 0x4

    if-eq v11, v2, :cond_4

    .line 1132
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore setNetworkTemplateEnabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1111
    :cond_2
    iget-boolean v2, v14, Landroid/net/NetworkPolicy;->active:Z

    if-eqz v2, :cond_3

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->isInsertSubscriberId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1112
    :cond_3
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore this policy"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1136
    :cond_4
    if-eqz p1, :cond_5

    const/4 v2, 0x4

    if-eq v11, v2, :cond_5

    .line 1137
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore setNetworkTemplateEnabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1139
    :cond_5
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto/16 :goto_0

    .line 1147
    :cond_6
    invoke-static {v8, v9, v14}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1148
    .local v4, start:J
    move-wide v6, v8

    .line 1149
    .local v6, end:J
    iget-object v3, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v17

    .line 1152
    .local v17, totalBytes:J
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " totalBytes:"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "start= "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "  end= "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-wide v2, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    const/4 v13, 0x1

    .line 1157
    .local v13, overLimitWithoutSnooze:Z
    :goto_1
    if-nez v13, :cond_8

    const/4 v12, 0x1

    .line 1160
    .local v12, networkEnabled:Z
    :goto_2
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " overLimitWithoutSnooze:"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "policy.lastLimitSnooze= "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v0, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    if-eqz p1, :cond_9

    if-eqz v12, :cond_9

    .line 1165
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore setNetworkTemplateEnabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1155
    .end local v12           #networkEnabled:Z
    .end local v13           #overLimitWithoutSnooze:Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    .line 1157
    .restart local v13       #overLimitWithoutSnooze:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    .line 1169
    .restart local v12       #networkEnabled:Z
    :cond_9
    if-eqz p1, :cond_a

    if-eqz v12, :cond_a

    .line 1170
    const-string v2, "NetworkPolicy"

    const-string v3, " ignore setNetworkTemplateEnabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1172
    :cond_a
    iget-object v2, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto/16 :goto_0

    .line 1176
    .end local v4           #start:J
    .end local v6           #end:J
    .end local v11           #matchRule:I
    .end local v12           #networkEnabled:Z
    .end local v13           #overLimitWithoutSnooze:Z
    .end local v14           #policy:Landroid/net/NetworkPolicy;
    .end local v15           #policySubId:Ljava/lang/String;
    .end local v17           #totalBytes:J
    :cond_b
    return-void
.end method

.method private updateNetworkRulesLocked()V
    .locals 40

    .prologue
    .line 1267
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNetworkRulesLocked()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const-string v27, ""

    .line 1270
    .local v27, mmsifacename:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1274
    .local v14, flag:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v35

    .line 1282
    .local v35, states:[Landroid/net/NetworkState;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v28

    .line 1283
    .local v28, networks:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    move-object/from16 v11, v35

    .local v11, arr$:[Landroid/net/NetworkState;
    array-length v0, v11

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    aget-object v34, v11, v17

    .line 1285
    .local v34, state:Landroid/net/NetworkState;
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1286
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v20

    .line 1291
    .local v20, iface:Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSimId()I

    move-result v33

    .line 1292
    .local v33, slotId:I
    const-string v10, ""

    .line 1293
    .local v10, activeSubscriberId:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 1294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    if-eqz v4, :cond_0

    .line 1296
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->iTel:Lcom/android/internal/telephony/ITelephony;

    move/from16 v0, v33

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/ITelephony;->getSubscriberId(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 1302
    :cond_0
    :goto_1
    if-eqz v10, :cond_1

    const-string v4, ""

    if-ne v10, v4, :cond_2

    .line 1303
    :cond_1
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "updateNetworkRulesLocked getSubscriberId=null slotId="

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v38, " iface="

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v38, " state.networkInfo.getType() ="

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/net/NetworkInfo;->getType()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-static {v4, v0, v10}, Landroid/net/NetworkIdentity;->buildNetworkIdentityGemini(Landroid/content/Context;Landroid/net/NetworkState;Ljava/lang/String;)Landroid/net/NetworkIdentity;

    move-result-object v19

    .line 1307
    .local v19, ident:Landroid/net/NetworkIdentity;
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "build net ident for sim:"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1315
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNetworkRulesLocked() TYPE_MOBILE_MMS"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v27

    .line 1317
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "updateNetworkRulesLocked() mmsifacename="

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const/4 v14, 0x1

    .line 1320
    :cond_3
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    .end local v10           #activeSubscriberId:Ljava/lang/String;
    .end local v19           #ident:Landroid/net/NetworkIdentity;
    .end local v20           #iface:Ljava/lang/String;
    .end local v33           #slotId:I
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1275
    .end local v11           #arr$:[Landroid/net/NetworkState;
    .end local v17           #i$:I
    .end local v23           #len$:I
    .end local v28           #networks:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .end local v34           #state:Landroid/net/NetworkState;
    .end local v35           #states:[Landroid/net/NetworkState;
    :catch_0
    move-exception v12

    .line 1432
    :goto_2
    return-void

    .line 1297
    .restart local v10       #activeSubscriberId:Ljava/lang/String;
    .restart local v11       #arr$:[Landroid/net/NetworkState;
    .restart local v17       #i$:I
    .restart local v20       #iface:Ljava/lang/String;
    .restart local v23       #len$:I
    .restart local v28       #networks:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .restart local v33       #slotId:I
    .restart local v34       #state:Landroid/net/NetworkState;
    .restart local v35       #states:[Landroid/net/NetworkState;
    :catch_1
    move-exception v12

    .line 1299
    .local v12, e:Landroid/os/RemoteException;
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNetworkRulesLocked RemoteException Itelphony is not ready"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1326
    .end local v10           #activeSubscriberId:Ljava/lang/String;
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v20           #iface:Ljava/lang/String;
    .end local v33           #slotId:I
    .end local v34           #state:Landroid/net/NetworkState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1327
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 1328
    .local v21, ifaceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v17           #i$:I
    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/net/NetworkPolicy;

    .line 1331
    .local v30, policy:Landroid/net/NetworkPolicy;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 1332
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1333
    .local v13, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/NetworkIdentity;

    .line 1334
    .restart local v19       #ident:Landroid/net/NetworkIdentity;
    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1335
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "add iface for policy:"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1337
    .restart local v20       #iface:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1341
    .end local v13           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/NetworkIdentity;Ljava/lang/String;>;"
    .end local v19           #ident:Landroid/net/NetworkIdentity;
    .end local v20           #iface:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1342
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    .line 1343
    .local v22, ifaces:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1347
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #ifaces:[Ljava/lang/String;
    .end local v30           #policy:Landroid/net/NetworkPolicy;
    :cond_9
    const-wide v24, 0x7fffffffffffffffL

    .line 1348
    .local v24, lowestRule:J
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v29

    .line 1352
    .local v29, newMeteredIfaces:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 1353
    .local v8, currentTime:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v11           #arr$:[Landroid/net/NetworkState;
    :cond_a
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/net/NetworkPolicy;

    .line 1354
    .restart local v30       #policy:Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    .line 1357
    .restart local v22       #ifaces:[Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1358
    move-object/from16 v0, v30

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1359
    .local v6, start:J
    move-object/from16 v0, v30

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v36

    .line 1364
    .local v36, totalBytes:J
    :goto_6
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "RulesLocked totalBytes:"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v36

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "applying policy "

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v38, " to ifaces "

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    move-object/from16 v0, v30

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v38, -0x1

    cmp-long v4, v4, v38

    if-eqz v4, :cond_f

    const/16 v16, 0x1

    .line 1372
    .local v16, hasWarning:Z
    :goto_7
    move-object/from16 v0, v30

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v38, -0x1

    cmp-long v4, v4, v38

    if-eqz v4, :cond_10

    const/4 v15, 0x1

    .line 1373
    .local v15, hasLimit:Z
    :goto_8
    if-nez v15, :cond_b

    move-object/from16 v0, v30

    iget-boolean v4, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_16

    .line 1375
    :cond_b
    if-nez v15, :cond_11

    .line 1378
    const-wide v31, 0x7fffffffffffffffL

    .line 1390
    .local v31, quotaBytes:J
    :goto_9
    move-object/from16 v0, v22

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_c

    .line 1392
    const-string v4, "NetworkPolicy"

    const-string v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_c
    move-object/from16 v11, v22

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v23, v0

    const/16 v18, 0x0

    .local v18, i$:I
    :goto_a
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_16

    aget-object v20, v11, v18

    .line 1396
    .restart local v20       #iface:Ljava/lang/String;
    if-eqz v20, :cond_d

    const-string v4, ""

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_13

    .line 1395
    :cond_d
    :goto_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 1361
    .end local v6           #start:J
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v15           #hasLimit:Z
    .end local v16           #hasWarning:Z
    .end local v18           #i$:I
    .end local v20           #iface:Ljava/lang/String;
    .end local v31           #quotaBytes:J
    .end local v36           #totalBytes:J
    :cond_e
    const-wide v6, 0x7fffffffffffffffL

    .line 1362
    .restart local v6       #start:J
    const-wide/16 v36, 0x0

    .restart local v36       #totalBytes:J
    goto/16 :goto_6

    .line 1371
    :cond_f
    const/16 v16, 0x0

    goto :goto_7

    .line 1372
    .restart local v16       #hasWarning:Z
    :cond_10
    const/4 v15, 0x0

    goto :goto_8

    .line 1379
    .restart local v15       #hasLimit:Z
    :cond_11
    move-object/from16 v0, v30

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_12

    .line 1382
    const-wide v31, 0x7fffffffffffffffL

    .restart local v31       #quotaBytes:J
    goto :goto_9

    .line 1387
    .end local v31           #quotaBytes:J
    :cond_12
    const-wide/16 v4, 0x1

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v38, v0

    sub-long v38, v38, v36

    move-wide/from16 v0, v38

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v31

    .restart local v31       #quotaBytes:J
    goto :goto_9

    .line 1397
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v20       #iface:Ljava/lang/String;
    :cond_13
    const/4 v4, 0x1

    if-ne v14, v4, :cond_14

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 1398
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "mmsifacename set quota mms ifacename="

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const-wide v31, 0x7fffffffffffffffL

    .line 1401
    :cond_14
    move-object/from16 v0, v30

    iget-boolean v4, v0, Landroid/net/NetworkPolicy;->active:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_15

    const/4 v4, 0x1

    if-ne v14, v4, :cond_d

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 1402
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1403
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1404
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 1410
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v20           #iface:Ljava/lang/String;
    .end local v31           #quotaBytes:J
    :cond_16
    if-eqz v16, :cond_17

    move-object/from16 v0, v30

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v4, v24

    if-gez v4, :cond_17

    .line 1411
    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v24, v0

    .line 1413
    :cond_17
    if-eqz v15, :cond_a

    move-object/from16 v0, v30

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v4, v4, v24

    if-gez v4, :cond_a

    .line 1414
    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v24, v0

    goto/16 :goto_5

    .line 1418
    .end local v6           #start:J
    .end local v15           #hasLimit:Z
    .end local v16           #hasWarning:Z
    .end local v22           #ifaces:[Ljava/lang/String;
    .end local v30           #policy:Landroid/net/NetworkPolicy;
    .end local v36           #totalBytes:J
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_19
    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1422
    .restart local v20       #iface:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1423
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "updateNetworkRulesLocked removeqta:"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    goto :goto_c

    .line 1427
    .end local v20           #iface:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 1429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Ljava/lang/String;

    .line 1430
    .local v26, meteredIfaces:[Ljava/lang/String;
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "updateNetworkRulesLocked meteredIfaces num:"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->size()I

    move-result v38

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2
.end method

.method private updateNotificationsLocked()V
    .locals 15

    .prologue
    .line 734
    const-string v0, "NetworkPolicy"

    const-string v1, "updateNotificationsLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 738
    .local v6, beforeNotifs:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 739
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 745
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v7

    .line 746
    .local v7, currentTime:J
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 749
    .local v10, policy:Landroid/net/NetworkPolicy;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " checking policy:"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v10, Landroid/net/NetworkPolicy;->active:Z

    if-nez v0, :cond_2

    .line 753
    :cond_1
    const-string v0, "NetworkPolicy"

    const-string v1, " ignore this policy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :cond_2
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-static {v7, v8, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 763
    .local v2, start:J
    move-wide v4, v7

    .line 764
    .local v4, end:J
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 767
    .local v12, totalBytes:J
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NotificationsLocked totalBytes:"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "  start="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "  end="

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 770
    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 771
    const/4 v0, 0x3

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto/16 :goto_0

    .line 773
    :cond_3
    const-string v0, "NetworkPolicy"

    const-string v1, "NotificationsLocked overlimit"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v0, 0x2

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    .line 775
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto/16 :goto_0

    .line 779
    :cond_4
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    .line 781
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 782
    const/4 v0, 0x1

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto/16 :goto_0

    .line 788
    .end local v2           #start:J
    .end local v4           #end:J
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    .end local v12           #totalBytes:J
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v0, :cond_6

    .line 789
    const-string v0, "NetworkPolicy:allowBackground"

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 793
    :cond_6
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 794
    .local v11, tag:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 795
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    goto :goto_1

    .line 798
    .end local v11           #tag:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private updateRulesForRestrictBackgroundLocked()V
    .locals 11

    .prologue
    .line 2250
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2251
    .local v4, pm:Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 2254
    .local v6, um:Landroid/os/UserManager;
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 2255
    .local v8, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v9, 0x2200

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 2258
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2259
    .local v7, user:Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2260
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 2261
    .local v5, uid:I
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .line 2266
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #uid:I
    .end local v7           #user:Landroid/content/pm/UserInfo;
    :cond_1
    const/16 v9, 0x3f5

    invoke-direct {p0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2267
    const/16 v9, 0x3fb

    invoke-direct {p0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2268
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 4

    .prologue
    .line 2237
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2238
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2239
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2240
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2241
    .local v2, uid:I
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2238
    .end local v2           #uid:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2244
    :cond_1
    return-void
.end method

.method private updateRulesForUidLocked(I)V
    .locals 6
    .parameter "uid"

    .prologue
    const/4 v4, 0x1

    .line 2281
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2317
    :goto_0
    return-void

    .line 2283
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v2

    .line 2284
    .local v2, uidPolicy:I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForeground(I)Z

    move-result v1

    .line 2287
    .local v1, uidForeground:Z
    const/4 v3, 0x0

    .line 2288
    .local v3, uidRules:I
    if-nez v1, :cond_1

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_1

    .line 2290
    const/4 v3, 0x1

    .line 2292
    :cond_1
    if-nez v1, :cond_2

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v5, :cond_2

    .line 2294
    const/4 v3, 0x1

    .line 2299
    :cond_2
    if-nez v3, :cond_3

    .line 2300
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2305
    :goto_1
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_4

    move v0, v4

    .line 2306
    .local v0, rejectMetered:Z
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidNetworkRules(IZ)V

    .line 2309
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2313
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v4, p1, v1}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2314
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2302
    .end local v0           #rejectMetered:Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 2305
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateScreenOn()V
    .locals 2

    .prologue
    .line 2222
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2224
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2228
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    .line 2229
    monitor-exit v1

    .line 2230
    return-void

    .line 2229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2225
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1677
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1681
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    .line 1682
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1684
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1686
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void

    .line 1677
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writePolicyLocked()V
    .locals 13

    .prologue
    .line 1689
    const-string v10, "NetworkPolicy"

    const-string v11, "writePolicyLocked()"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const/4 v1, 0x0

    .line 1693
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1695
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1696
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v10, "utf-8"

    invoke-interface {v5, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1697
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1699
    const/4 v10, 0x0

    const-string v11, "policy-list"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1700
    const-string v10, "version"

    const/16 v11, 0xa

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1701
    const-string v10, "restrictBackground"

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1704
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    .line 1705
    .local v6, policy:Landroid/net/NetworkPolicy;
    iget-object v8, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1707
    .local v8, template:Landroid/net/NetworkTemplate;
    const/4 v10, 0x0

    const-string v11, "network-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1708
    const-string v10, "networkTemplate"

    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v11

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1709
    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 1710
    .local v7, subscriberId:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1711
    const/4 v10, 0x0

    const-string v11, "subscriberId"

    invoke-interface {v5, v10, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1713
    :cond_0
    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    .line 1714
    .local v4, networkId:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1715
    const/4 v10, 0x0

    const-string v11, "networkId"

    invoke-interface {v5, v10, v11, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1717
    :cond_1
    const-string v10, "cycleDay"

    iget v11, v6, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1718
    const/4 v10, 0x0

    const-string v11, "cycleTimezone"

    iget-object v12, v6, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1719
    const-string v10, "warningBytes"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1720
    const-string v10, "limitBytes"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1721
    const-string v10, "lastWarningSnooze"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1722
    const-string v10, "lastLimitSnooze"

    iget-wide v11, v6, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v5, v10, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1723
    const-string v10, "metered"

    iget-boolean v11, v6, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1724
    const-string v10, "inferred"

    iget-boolean v11, v6, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1728
    const-string v10, "active"

    iget-boolean v11, v6, Landroid/net/NetworkPolicy;->active:Z

    invoke-static {v5, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1731
    const/4 v10, 0x0

    const-string v11, "network-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1752
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #networkId:Ljava/lang/String;
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #policy:Landroid/net/NetworkPolicy;
    .end local v7           #subscriberId:Ljava/lang/String;
    .end local v8           #template:Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v0

    .line 1753
    .local v0, e:Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 1754
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1757
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void

    .line 1735
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 1736
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 1737
    .local v9, uid:I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 1740
    .local v6, policy:I
    if-nez v6, :cond_4

    .line 1735
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1742
    :cond_4
    const/4 v10, 0x0

    const-string v11, "uid-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1743
    const-string v10, "uid"

    invoke-static {v5, v10, v9}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1744
    const-string v10, "policy"

    invoke-static {v5, v10, v6}, Lcom/android/server/net/NetworkPolicyManagerService$XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1745
    const/4 v10, 0x0

    const-string v11, "uid-policy"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 1748
    .end local v6           #policy:I
    .end local v9           #uid:I
    :cond_5
    const/4 v10, 0x0

    const-string v11, "policy-list"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1749
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1751
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2585
    return-void
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .parameter "connManager"

    .prologue
    .line 370
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 371
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .parameter "notifManager"

    .prologue
    .line 374
    const-string v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 375
    return-void
.end method

.method public checkDataConnOverLimit()Z
    .locals 18

    .prologue
    .line 2908
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 2909
    .local v13, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v12

    .line 2910
    .local v12, subsId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2912
    .local v10, overLimit:Z
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 2913
    const-string v1, "NetworkPolicy"

    const-string v2, "SIM_STATE_READY isds not ready"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    const/4 v1, 0x0

    .line 2943
    :goto_0
    return v1

    .line 2918
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v7

    .line 2919
    .local v7, currentTime:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    .line 2920
    .local v11, policy:Landroid/net/NetworkPolicy;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkDataConnOverLimit template.getSubscriberId:"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2923
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2925
    iget-wide v1, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v16, -0x1

    cmp-long v1, v1, v16

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 2927
    :cond_2
    invoke-static {v7, v8, v11}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v3

    .line 2928
    .local v3, start:J
    move-wide v5, v7

    .line 2929
    .local v5, end:J
    iget-object v2, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 2931
    .local v14, totalBytes:J
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkDataConnOverLimit totalBytes:"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkDataConnOverLimit policy:"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    invoke-virtual {v11, v14, v15}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, v11, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 2935
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 2937
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2941
    .end local v3           #start:J
    .end local v5           #end:J
    .end local v11           #policy:Landroid/net/NetworkPolicy;
    .end local v14           #totalBytes:J
    :cond_4
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkDataConnOverLimit overLimit:"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v10

    .line 2943
    goto/16 :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 2105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DUMP"

    const-string v16, "NetworkPolicy"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v14, "  "

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v14}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2109
    .local v5, fout:Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2110
    .local v2, argSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v1, v3, v7

    .line 2111
    .local v1, arg:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2110
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2114
    .end local v1           #arg:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2115
    :try_start_0
    const-string v14, "--unsnooze"

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 2117
    .local v10, policy:Landroid/net/NetworkPolicy;
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->clearSnooze()V

    goto :goto_1

    .line 2183
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 2121
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v14, 0x1

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 2122
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2123
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2124
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2126
    const-string v14, "Cleared snooze timestamps"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2127
    monitor-exit v15

    .line 2184
    :goto_2
    return-void

    .line 2130
    .local v7, i$:I
    :cond_2
    const-string v14, "Restrict background: "

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2131
    const-string v14, "Network policies:"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 2134
    .restart local v10       #policy:Landroid/net/NetworkPolicy;
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2136
    .end local v10           #policy:Landroid/net/NetworkPolicy;
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2138
    const-string v14, "Policy for UIDs:"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 2141
    .local v12, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v12, :cond_4

    .line 2142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 2143
    .local v13, uid:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 2144
    .local v10, policy:I
    const-string v14, "UID="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2145
    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2146
    const-string v14, " policy="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2147
    invoke-static {v5, v10}, Landroid/net/NetworkPolicyManager;->dumpPolicy(Ljava/io/PrintWriter;I)V

    .line 2148
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2141
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2150
    .end local v10           #policy:I
    .end local v13           #uid:I
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2152
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2153
    .local v8, knownUids:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-static {v14, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)V

    .line 2154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v14, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2156
    const-string v14, "Status for known UIDs:"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2158
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    .line 2159
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_7

    .line 2160
    invoke-virtual {v8, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    .line 2161
    .restart local v13       #uid:I
    const-string v14, "UID="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2162
    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2164
    const-string v14, " foreground="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 2166
    .local v4, foregroundIndex:I
    if-gez v4, :cond_5

    .line 2167
    const-string v14, "UNKNOWN"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2172
    :goto_6
    const-string v14, " rules="

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v11

    .line 2174
    .local v11, rulesIndex:I
    if-gez v11, :cond_6

    .line 2175
    const-string v14, "UNKNOWN"

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2180
    :goto_7
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2159
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2169
    .end local v11           #rulesIndex:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseBooleanArray;

    invoke-static {v5, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->dumpSparseBooleanArray(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    goto :goto_6

    .line 2177
    .restart local v11       #rulesIndex:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    invoke-static {v5, v14}, Landroid/net/NetworkPolicyManager;->dumpRules(Ljava/io/PrintWriter;I)V

    goto :goto_7

    .line 2182
    .end local v4           #foregroundIndex:I
    .end local v11           #rulesIndex:I
    .end local v13           #uid:I
    :cond_7
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2183
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 3

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1918
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    monitor-exit v1

    return-object v0

    .line 1919
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 5
    .parameter "state"

    .prologue
    .line 2026
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2032
    .local v0, token:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2034
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2032
    return-object v2

    .line 2034
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2011
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v1

    return v0

    .line 2012
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .parameter "uid"

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1790
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1791
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .parameter "policy"

    .prologue
    .line 1796
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 1799
    .local v3, uids:[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1800
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1801
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1802
    .local v1, uid:I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1803
    .local v2, uidPolicy:I
    if-ne v2, p1, :cond_0

    .line 1804
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 1800
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1807
    .end local v1           #uid:I
    .end local v2           #uidPolicy:I
    :cond_1
    monitor-exit v5

    .line 1808
    return-object v3

    .line 1807
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isDataConnOverLimit(Ljava/lang/String;)Z
    .locals 20
    .parameter "subscriberId"

    .prologue
    .line 2859
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v18, "NetworkPolicy"

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isDataConnOverLimit subscriberId:"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getITelephony()V

    .line 2864
    if-eqz p1, :cond_0

    const-string v1, ""

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 2865
    :cond_0
    const-string v1, "NetworkPolicy"

    const-string v2, "isDataConnOverLimit subscriberId==null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    const/4 v14, 0x0

    .line 2897
    :goto_0
    return v14

    .line 2869
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2870
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/net/NetworkPolicy;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/net/NetworkPolicy;

    .line 2871
    .local v13, networkpolicies:[Landroid/net/NetworkPolicy;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2872
    move-object v7, v13

    .local v7, arr$:[Landroid/net/NetworkPolicy;
    array-length v12, v7

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_5

    aget-object v15, v7, v11

    .line 2873
    .local v15, policy:Landroid/net/NetworkPolicy;
    iget-object v1, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2874
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isDataConnOverLimit policy:"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    iget-wide v1, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v18, -0x1

    cmp-long v1, v1, v18

    if-nez v1, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    .line 2871
    .end local v7           #arr$:[Landroid/net/NetworkPolicy;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #networkpolicies:[Landroid/net/NetworkPolicy;
    .end local v15           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2877
    .restart local v7       #arr$:[Landroid/net/NetworkPolicy;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #networkpolicies:[Landroid/net/NetworkPolicy;
    .restart local v15       #policy:Landroid/net/NetworkPolicy;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .line 2878
    .local v8, currentTime:J
    invoke-static {v8, v9, v15}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v3

    .line 2879
    .local v3, start:J
    move-wide v5, v8

    .line 2882
    .local v5, end:J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-interface/range {v1 .. v6}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v16

    .line 2890
    .local v16, totalBytes:J
    invoke-virtual/range {v15 .. v17}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    const/4 v14, 0x1

    .line 2891
    .local v14, overLimit:Z
    :goto_2
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isDataConnOverLimit isOver: "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2883
    .end local v14           #overLimit:Z
    .end local v16           #totalBytes:J
    :catch_0
    move-exception v10

    .line 2884
    .local v10, e:Ljava/lang/RuntimeException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "problem reading network stats: "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2886
    .end local v10           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v10

    .line 2888
    .local v10, e:Landroid/os/RemoteException;
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2890
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v16       #totalBytes:J
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 2872
    .end local v3           #start:J
    .end local v5           #end:J
    .end local v8           #currentTime:J
    .end local v16           #totalBytes:J
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 2896
    .end local v15           #policy:Landroid/net/NetworkPolicy;
    :cond_5
    const-string v1, "NetworkPolicy"

    const-string v2, "isDataConnOverLimit no policy"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 5
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 2080
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 2083
    .local v0, ident:Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2099
    :cond_0
    :goto_0
    return v3

    .line 2088
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2089
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2090
    .local v1, policy:Landroid/net/NetworkPolicy;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2092
    if-eqz v1, :cond_2

    .line 2093
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    goto :goto_0

    .line 2090
    .end local v1           #policy:Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2095
    .restart local v1       #policy:Landroid/net/NetworkPolicy;
    :cond_2
    iget-object v4, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 2096
    .local v2, type:I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    .line 2099
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isPolicyModified()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2851
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    if-eqz v1, :cond_0

    .line 2852
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    .line 2853
    const/4 v0, 0x1

    .line 2855
    :cond_0
    return v0
.end method

.method public isUidForeground(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v0, 0x0

    .line 2188
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2192
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    .line 2193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1843
    return-void
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 8
    .parameter "policies"

    .prologue
    const/4 v7, 0x1

    .line 1855
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    const-string v4, "NetworkPolicy"

    const-string v5, "setNetworkPolicies"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1861
    iput-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    .line 1863
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1864
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1865
    move-object v0, p1

    .local v0, arr$:[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1866
    .local v3, policy:Landroid/net/NetworkPolicy;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1869
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    .line 1870
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 1871
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1872
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1873
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1874
    monitor-exit v5

    .line 1875
    return-void

    .line 1874
    .end local v0           #arr$:[Landroid/net/NetworkPolicy;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setNetworkPoliciesForWifi([Landroid/net/NetworkPolicy;)V
    .locals 8
    .parameter "policies"

    .prologue
    const/4 v7, 0x1

    .line 1879
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const-string v4, "NetworkPolicy"

    const-string v5, "setNetworkPolicies for wifi"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1885
    iput-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    .line 1887
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1888
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1889
    move-object v0, p1

    .local v0, arr$:[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1890
    .local v3, policy:Landroid/net/NetworkPolicy;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1893
    .end local v3           #policy:Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mShouldCheckNetworkEnable:Z

    .line 1894
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked(Z)V

    .line 1895
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1896
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1897
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 1898
    monitor-exit v5

    .line 1899
    return-void

    .line 1898
    .end local v0           #arr$:[Landroid/net/NetworkPolicy;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setRestrictBackground(Z)V
    .locals 4
    .parameter "restrictBackground"

    .prologue
    const/4 v1, 0x0

    .line 1989
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    const-string v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRestrictBackground:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1995
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1996
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1997
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 1998
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1999
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2000
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2002
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2004
    return-void

    .line 2000
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 2002
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 3
    .parameter "uid"
    .parameter "policy"

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppPolicy appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " policy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1765
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1768
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    .line 1769
    return-void
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .parameter "template"

    .prologue
    .line 1924
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snoozePolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsPolicyModified:Z

    .line 1931
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1933
    .local v0, token:J
    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1935
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1937
    return-void

    .line 1935
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 378
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 379
    const-string v10, "NetworkPolicy"

    const-string v11, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 385
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    .line 387
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v10, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 389
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 391
    :cond_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    .line 396
    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 397
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v10, v11}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 405
    :goto_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 406
    .local v4, screenFilter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    new-instance v1, Landroid/content/IntentFilter;

    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v1, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 412
    .local v1, connFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v1, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 415
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 416
    .local v3, packageFilter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v10, "package"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 418
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v3, v14, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 421
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.UID_REMOVED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v12, v14, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 425
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 426
    .local v7, userFilter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.USER_ADDED"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v10, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v7, v14, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 431
    new-instance v6, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v6, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 432
    .local v6, statsFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v6, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 436
    new-instance v0, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, allowFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v0, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 440
    new-instance v5, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v5, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 441
    .local v5, snoozeWarningFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v5, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 445
    new-instance v8, Landroid/content/IntentFilter;

    const-string v10, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v8, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 446
    .local v8, wifiConfigFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v8, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 450
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 452
    .local v9, wifiStateFilter:Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 456
    new-instance v2, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 457
    .local v2, mSimFilter:Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 391
    .end local v0           #allowFilter:Landroid/content/IntentFilter;
    .end local v1           #connFilter:Landroid/content/IntentFilter;
    .end local v2           #mSimFilter:Landroid/content/IntentFilter;
    .end local v3           #packageFilter:Landroid/content/IntentFilter;
    .end local v4           #screenFilter:Landroid/content/IntentFilter;
    .end local v5           #snoozeWarningFilter:Landroid/content/IntentFilter;
    .end local v6           #statsFilter:Landroid/content/IntentFilter;
    .end local v7           #userFilter:Landroid/content/IntentFilter;
    .end local v8           #wifiConfigFilter:Landroid/content/IntentFilter;
    .end local v9           #wifiStateFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 398
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1851
    return-void
.end method
