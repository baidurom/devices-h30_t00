.class public final Lcom/android/server/display/DisplayManagerService;
.super Landroid/hardware/display/IDisplayManager$Stub;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$1;,
        Lcom/android/server/display/DisplayManagerService$CallbackRecord;,
        Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;,
        Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;,
        Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;,
        Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;,
        Lcom/android/server/display/DisplayManagerService$SyncRoot;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DISPLAY_BLANK_STATE_BLANKED:I = 0x1

.field private static final DISPLAY_BLANK_STATE_UNBLANKED:I = 0x2

.field private static final DISPLAY_BLANK_STATE_UNKNOWN:I = 0x0

.field private static final FORCE_WIFI_DISPLAY_ENABLE:Ljava/lang/String; = "persist.debug.wfd.enable"

.field private static final MSG_DELIVER_DISPLAY_EVENT:I = 0x3

.field private static final MSG_REGISTER_ADDITIONAL_DISPLAY_ADAPTERS:I = 0x2

.field private static final MSG_REGISTER_DEFAULT_DISPLAY_ADAPTER:I = 0x1

.field private static final MSG_REQUEST_TRAVERSAL:I = 0x4

.field private static final MSG_UPDATE_VIEWPORT:I = 0x5

.field private static final SYSTEM_HEADLESS:Ljava/lang/String; = "ro.config.headless"

.field private static final TAG:Ljava/lang/String; = "DisplayManagerService"

.field private static final WAIT_FOR_DEFAULT_DISPLAY_TIMEOUT:J = 0x2710L


# instance fields
.field private mAllDisplayBlankStateFromPowerManager:I

.field public final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultViewport:Lcom/android/server/display/DisplayViewport;

.field private final mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

.field private final mDisplayAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/server/display/DisplayTransactionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

.field private final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field private final mHeadless:Z

.field private mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mNextNonDefaultDisplayId:I

.field public mOnlyCore:Z

.field private mPendingTraversal:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private final mRemovedDisplayDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field public mSafeMode:Z

.field private final mSingleDisplayDemoMode:Z

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private final mTempCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempDefaultViewport:Lcom/android/server/display/DisplayViewport;

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

.field private final mUiHandler:Landroid/os/Handler;

.field private mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field private mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "mainHandler"
    .parameter "uiHandler"

    .prologue
    const/4 v2, 0x1

    .line 192
    invoke-direct {p0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>()V

    .line 123
    new-instance v0, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 156
    iput v2, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    .line 159
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 174
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    .line 175
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    .line 178
    new-instance v0, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 189
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Lcom/android/server/display/DisplayViewport;

    .line 190
    new-instance v0, Lcom/android/server/display/DisplayViewport;

    invoke-direct {v0}, Lcom/android/server/display/DisplayViewport;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    .line 193
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 194
    const-string v0, "ro.config.headless"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    .line 196
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 197
    iput-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    .line 199
    const-string v0, "persist.demo.singledisplay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    .line 201
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 202
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapter()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->onCallbackDied(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayViewport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    return-object v0
.end method

.method private addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 9
    .parameter "device"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 677
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 678
    .local v0, deviceInfo:Lcom/android/server/display/DisplayDeviceInfo;
    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    move v3, v5

    .line 680
    .local v3, isDefault:Z
    :goto_0
    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 681
    const-string v6, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring attempt to add a second default display: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v3, 0x0

    .line 685
    :cond_0
    if-nez v3, :cond_2

    iget-boolean v6, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    if-eqz v6, :cond_2

    .line 686
    const-string v5, "DisplayManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not creating a logical display for a secondary display  because single display demo mode is enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :goto_1
    return-void

    .end local v3           #isDefault:Z
    :cond_1
    move v3, v6

    .line 678
    goto :goto_0

    .line 691
    .restart local v3       #isDefault:Z
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(Z)I

    move-result v2

    .line 692
    .local v2, displayId:I
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->assignLayerStackLocked(I)I

    move-result v4

    .line 694
    .local v4, layerStack:I
    new-instance v1, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v1, v2, v4, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    .line 695
    .local v1, display:Lcom/android/server/display/LogicalDisplay;
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 696
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v6

    if-nez v6, :cond_3

    .line 698
    const-string v5, "DisplayManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring display device because the logical display created from it was not considered valid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 703
    :cond_3
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 706
    if-eqz v3, :cond_4

    .line 707
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 710
    :cond_4
    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    goto :goto_1
.end method

.method private assignDisplayIdLocked(Z)I
    .locals 2
    .parameter "isDefault"

    .prologue
    .line 714
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    goto :goto_0
.end method

.method private assignLayerStackLocked(I)I
    .locals 0
    .parameter "displayId"

    .prologue
    .line 720
    return p1
.end method

.method private canCallerConfigureWifiDisplay()Z
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearViewportsLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 798
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    iput-boolean v1, v0, Lcom/android/server/display/DisplayViewport;->valid:Z

    .line 799
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iput-boolean v1, v0, Lcom/android/server/display/DisplayViewport;->valid:Z

    .line 800
    return-void
.end method

.method private configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 804
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    .line 805
    .local v0, display:Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 806
    const/4 v0, 0x0

    .line 808
    :cond_0
    if-nez v0, :cond_1

    .line 809
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #display:Lcom/android/server/display/LogicalDisplay;
    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 813
    .restart local v0       #display:Lcom/android/server/display/LogicalDisplay;
    :cond_1
    if-nez v0, :cond_3

    .line 815
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing logical display to use for physical display device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_2
    :goto_0
    return-void

    .line 819
    :cond_3
    iget v4, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    if-ne v4, v2, :cond_5

    .line 821
    .local v2, isBlanked:Z
    :goto_1
    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/LogicalDisplay;->configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V

    .line 825
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 826
    .local v1, info:Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    iget-boolean v3, v3, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-nez v3, :cond_4

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 828
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    invoke-static {v3, v0, p1}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 830
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    iget-boolean v3, v3, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 832
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    invoke-static {v3, v0, p1}, Lcom/android/server/display/DisplayManagerService;->setViewportLocked(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    goto :goto_0

    .end local v1           #info:Lcom/android/server/display/DisplayDeviceInfo;
    .end local v2           #isBlanked:Z
    :cond_5
    move v2, v3

    .line 819
    goto :goto_1
.end method

.method private deliverDisplayEvent(II)V
    .locals 5
    .parameter "displayId"
    .parameter "event"

    .prologue
    .line 874
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering display event: displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 881
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 882
    .local v0, count:I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 883
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 884
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 890
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(II)V

    .line 889
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 886
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 892
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 893
    return-void
.end method

.method private findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 4
    .parameter "device"

    .prologue
    .line 844
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 845
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 846
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 847
    .local v1, display:Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 851
    .end local v1           #display:Lcom/android/server/display/LogicalDisplay;
    :goto_1
    return-object v1

    .line 845
    .restart local v1       #display:Lcom/android/server/display/LogicalDisplay;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 851
    .end local v1           #display:Lcom/android/server/display/LogicalDisplay;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add already added display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    monitor-exit v1

    .line 639
    :goto_0
    return-void

    .line 622
    :cond_0
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 626
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 630
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    packed-switch v0, :pswitch_data_0

    .line 638
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 632
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->blankLocked()V

    goto :goto_1

    .line 635
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->unblankLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to change non-existent display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    monitor-exit v1

    .line 656
    :goto_0
    return-void

    .line 649
    :cond_0
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->applyPendingDisplayDeviceInfoChangesLocked()V

    .line 652
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 655
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

.method private handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existent display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    monitor-exit v1

    .line 672
    :goto_0
    return-void

    .line 666
    :cond_0
    const-string v0, "DisplayManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display device removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    .line 670
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 671
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onCallbackDied(I)V
    .locals 2
    .parameter "pid"

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 445
    monitor-exit v1

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private performTraversalInTransactionLocked()V
    .locals 6

    .prologue
    .line 748
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 749
    .local v3, removedCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 750
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 751
    .local v1, device:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->performTraversalInTransactionLocked()V

    .line 749
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 753
    .end local v1           #device:Lcom/android/server/display/DisplayDevice;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mRemovedDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 757
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->clearViewportsLocked()V

    .line 760
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 761
    .local v0, count:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 762
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 763
    .restart local v1       #device:Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 764
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->performTraversalInTransactionLocked()V

    .line 761
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 768
    .end local v1           #device:Lcom/android/server/display/DisplayDevice;
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

    if-eqz v4, :cond_2

    .line 769
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 771
    :cond_2
    return-void
.end method

.method private registerAdditionalDisplayAdapters()V
    .locals 2

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 575
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerOverlayDisplayAdapterLocked()V

    .line 577
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    .line 579
    :cond_0
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerDefaultDisplayAdapter()V
    .locals 6

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 563
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Lcom/android/server/display/HeadlessDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/HeadlessDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 570
    :goto_0
    monitor-exit v1

    .line 571
    return-void

    .line 567
    :cond_0
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 612
    return-void
.end method

.method private registerOverlayDisplayAdapterLocked()V
    .locals 6

    .prologue
    .line 583
    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 585
    return-void
.end method

.method private registerWifiDisplayAdapterLocked()V
    .locals 6

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.debug.wfd.enable"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 592
    :cond_0
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 595
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 597
    return-void
.end method

.method private scheduleTraversalLocked(Z)V
    .locals 2
    .parameter "inTraversal"

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

    if-eqz v0, :cond_0

    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 864
    if-nez p1, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 868
    :cond_0
    return-void
.end method

.method private sendDisplayEventLocked(II)V
    .locals 3
    .parameter "displayId"
    .parameter "event"

    .prologue
    .line 855
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 856
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 857
    return-void
.end method

.method private static setViewportLocked(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .locals 1
    .parameter "viewport"
    .parameter "display"
    .parameter "device"

    .prologue
    .line 838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayViewport;->valid:Z

    .line 839
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayViewport;->displayId:I

    .line 840
    invoke-virtual {p2, p0}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Lcom/android/server/display/DisplayViewport;)V

    .line 841
    return-void
.end method

.method private shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLogicalDisplaysLocked()Z
    .locals 7

    .prologue
    .line 727
    const/4 v0, 0x0

    .line 728
    .local v0, changed:Z
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, i:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    if-lez v4, :cond_2

    .line 729
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 730
    .local v2, displayId:I
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 732
    .local v1, display:Lcom/android/server/display/LogicalDisplay;
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 733
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 734
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 735
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 736
    const/4 v5, 0x3

    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 737
    const/4 v0, 0x1

    :cond_0
    :goto_1
    move v4, v3

    .line 742
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 738
    .end local v4           #i:I
    .restart local v3       #i:I
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 739
    const/4 v5, 0x2

    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 740
    const/4 v0, 0x1

    goto :goto_1

    .line 743
    .end local v1           #display:Lcom/android/server/display/LogicalDisplay;
    .end local v2           #displayId:I
    :cond_2
    return v0
.end method


# virtual methods
.method public blankAllDisplaysFromPowerManager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 349
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 350
    :try_start_0
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    if-eq v3, v5, :cond_1

    .line 351
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    .line 353
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 354
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 355
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 356
    .local v1, device:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->blankLocked()V

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v1           #device:Lcom/android/server/display/DisplayDevice;
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 361
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_1
    monitor-exit v4

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 5
    .parameter "address"

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "address must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v2

    .line 469
    .local v2, trusted:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 471
    .local v0, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 472
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v3, :cond_1

    .line 473
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;Z)V

    .line 475
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 479
    return-void

    .line 475
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 477
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public disconnectWifiDisplay()V
    .locals 4

    .prologue
    .line 483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 485
    .local v0, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 486
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 489
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    return-void

    .line 489
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 491
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 897
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.DUMP"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 900
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission Denial: can\'t dump DisplayManager from from pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    :goto_0
    return-void

    .line 905
    :cond_1
    const-string v8, "DISPLAY MANAGER (dumpsys display)"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v9

    .line 908
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHeadless="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mOnlyCode="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSafeMode="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mPendingTraversal="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAllDisplayBlankStateFromPowerManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mNextNonDefaultDisplayId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDefaultViewport="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultViewport:Lcom/android/server/display/DisplayViewport;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mExternalTouchViewport="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Lcom/android/server/display/DisplayViewport;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSingleDisplayDemoMode="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v8, "    "

    invoke-direct {v6, p2, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 920
    .local v6, ipw:Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 922
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 923
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display Adapters: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayAdapter;

    .line 925
    .local v0, adapter:Lcom/android/server/display/DisplayAdapter;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 945
    .end local v0           #adapter:Lcom/android/server/display/DisplayAdapter;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #ipw:Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 929
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #ipw:Lcom/android/internal/util/IndentingPrintWriter;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 930
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display Devices: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 932
    .local v1, device:Lcom/android/server/display/DisplayDevice;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v1, v6}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 936
    .end local v1           #device:Lcom/android/server/display/DisplayDevice;
    :cond_3
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 937
    .local v7, logicalDisplayCount:I
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 938
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Logical Displays: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v7, :cond_4

    .line 940
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 941
    .local v3, displayId:I
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 942
    .local v2, display:Lcom/android/server/display/LogicalDisplay;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Display "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v2, v6}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 939
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 945
    .end local v2           #display:Lcom/android/server/display/LogicalDisplay;
    .end local v3           #displayId:I
    :cond_4
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    .line 519
    if-nez p1, :cond_0

    .line 520
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v2

    if-nez v2, :cond_1

    .line 523
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CONFIGURE_WIFI_DISPLAY permission to forget a wifi display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 527
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 529
    .local v0, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_2

    .line 531
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    .line 533
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    return-void

    .line 533
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 535
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDisplayIds()[I
    .locals 5

    .prologue
    .line 406
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 407
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 408
    .local v0, count:I
    new-array v1, v0, [I

    .line 409
    .local v1, displayIds:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 410
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    :cond_0
    monitor-exit v4

    return-object v1

    .line 413
    .end local v0           #count:I
    .end local v1           #displayIds:[I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 3
    .parameter "displayId"

    .prologue
    .line 392
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 394
    .local v0, display:Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    monitor-exit v2

    .line 397
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 398
    .end local v0           #display:Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 4

    .prologue
    .line 541
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 543
    .local v0, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 544
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v2

    .line 547
    :cond_0
    :try_start_2
    new-instance v2, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {v2}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 551
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 551
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isHeadless()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mHeadless:Z

    return v0
.end method

.method public performTraversalInTransactionFromWindowManager()V
    .locals 4

    .prologue
    .line 330
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    .line 331
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v2, :cond_1

    .line 332
    monitor-exit v3

    .line 343
    :cond_0
    return-void

    .line 334
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 336
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->performTraversalInTransactionLocked()V

    .line 337
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayTransactionListener;

    .line 341
    .local v1, listener:Lcom/android/server/display/DisplayTransactionListener;
    invoke-interface {v1}, Lcom/android/server/display/DisplayTransactionListener;->onDisplayTransaction()V

    goto :goto_0

    .line 337
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/server/display/DisplayTransactionListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .locals 7
    .parameter "callback"

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 419
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 422
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v5

    .line 423
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 424
    .local v1, callingPid:I
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 425
    new-instance v4, Ljava/lang/SecurityException;

    const-string v6, "The calling process has already registered an IDisplayManagerCallback."

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 439
    .end local v1           #callingPid:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 429
    .restart local v1       #callingPid:I
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    .local v3, record:Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 432
    .local v0, binder:Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 438
    :try_start_3
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    monitor-exit v5

    .line 440
    return-void

    .line 433
    .end local v0           #binder:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 435
    .local v2, ex:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public registerDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "address"
    .parameter "alias"

    .prologue
    .line 497
    if-nez p1, :cond_0

    .line 498
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->canCallerConfigureWifiDisplay()Z

    move-result v2

    if-nez v2, :cond_1

    .line 501
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CONFIGURE_WIFI_DISPLAY permission to rename a wifi display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 507
    .local v0, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 508
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_2

    .line 509
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    return-void

    .line 511
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 513
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public scanWifiDisplays()V
    .locals 4

    .prologue
    .line 450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 452
    .local v0, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 453
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->requestScanLocked()V

    .line 456
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 460
    return-void

    .line 456
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 458
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDisplayHasContent(IZZ)V
    .locals 3
    .parameter "displayId"
    .parameter "hasContent"
    .parameter "inTraversal"

    .prologue
    .line 788
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 790
    .local v0, display:Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 791
    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    .line 792
    invoke-direct {p0, p3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 794
    :cond_0
    monitor-exit v2

    .line 795
    return-void

    .line 794
    .end local v0           #display:Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .locals 4
    .parameter "displayId"
    .parameter "info"

    .prologue
    .line 312
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    .line 314
    .local v0, display:Lcom/android/server/display/LogicalDisplay;
    if-eqz v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 316
    invoke-virtual {v0, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)V

    .line 317
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 319
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 322
    :cond_0
    monitor-exit v2

    .line 323
    return-void

    .line 322
    .end local v0           #display:Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V
    .locals 2
    .parameter "inputManagerFuncs"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 244
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerFuncs:Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 246
    monitor-exit v1

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V
    .locals 2
    .parameter "windowManagerFuncs"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 233
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerFuncs:Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 235
    monitor-exit v1

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady(ZZ)V
    .locals 2
    .parameter "safeMode"
    .parameter "onlyCore"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 254
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 255
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    .line 256
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 259
    return-void

    .line 256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unblankAllDisplaysFromPowerManager()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 368
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v4

    .line 369
    :try_start_0
    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    if-eq v3, v5, :cond_1

    .line 370
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mAllDisplayBlankStateFromPowerManager:I

    .line 372
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 373
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 374
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 375
    .local v1, device:Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->unblankLocked()V

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    .end local v1           #device:Lcom/android/server/display/DisplayDevice;
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 380
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_1
    monitor-exit v4

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public unregisterDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public waitForDefaultDisplay()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 208
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v5

    .line 209
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 210
    .local v2, timeout:J
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 212
    .local v0, delay:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    .line 213
    monitor-exit v5

    .line 224
    .end local v0           #delay:J
    :goto_1
    return v4

    .line 216
    .restart local v0       #delay:J
    :cond_0
    const-string v6, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "waitForDefaultDisplay: waiting, timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :try_start_1
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v6

    goto :goto_0

    .line 223
    .end local v0           #delay:J
    :cond_1
    :try_start_2
    monitor-exit v5

    .line 224
    const/4 v4, 0x1

    goto :goto_1

    .line 223
    .end local v2           #timeout:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
