.class public Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;
.super Ljava/lang/Object;
.source "PhotoShareSdkBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$1;,
        Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;,
        Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkListener;,
        Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsDealNoSpaceMessage:Z

.field private mLastNoSpaceShowToastTime:J

.field private mSdkBroadcastReceiver:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mLastNoSpaceShowToastTime:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mIsDealNoSpaceMessage:Z

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mIsDealNoSpaceMessage:Z

    return v0
.end method

.method static synthetic access$302(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mIsDealNoSpaceMessage:Z

    return p1
.end method

.method static synthetic access$400(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mLastNoSpaceShowToastTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mLastNoSpaceShowToastTime:J

    return-wide p1
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->instance:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    invoke-direct {v0}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;-><init>()V

    sput-object v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->instance:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;

    .line 36
    :cond_0
    sget-object v0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->instance:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public initSdkBroadCastManager(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 40
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mContext:Landroid/content/Context;

    .line 44
    new-instance v1, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;-><init>(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$1;)V

    iput-object v1, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mSdkBroadcastReceiver:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.huawei.hicloud.photosharesdk.uirefresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "com.huawei.hicloud.photosharesdk.dir"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->mSdkBroadcastReceiver:Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$SdkBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public removeListener(Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager$MyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/receiver/PhotoShareSdkBroadcastManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method
