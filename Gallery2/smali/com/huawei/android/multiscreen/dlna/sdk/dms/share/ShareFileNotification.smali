.class public Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;
.super Ljava/lang/Object;
.source "ShareFileNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareFileNotification"

.field private static instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

.field private static preDelayTime:I

.field private static proDelayTime:I


# instance fields
.field private isProcess:Z

.field private lock:Ljava/lang/Object;

.field private mShareXMLManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

.field private updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x1f4

    sput v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->preDelayTime:I

    .line 44
    const/16 v0, 0x1194

    sput v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->proDelayTime:I

    .line 18
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->isProcess:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->lock:Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    .line 89
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->mShareXMLManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    .line 90
    return-void
.end method

.method protected constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;)V
    .locals 1
    .parameter "_updateOpsList"
    .parameter "_mShareXMLManager"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->isProcess:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->lock:Ljava/lang/Object;

    .line 94
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    .line 95
    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->mShareXMLManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->isProcess:Z

    return-void
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->preDelayTime:I

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->proDelayTime:I

    return v0
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    .line 80
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->instance:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;

    return-object v0
.end method


# virtual methods
.method public asynchronousSaveAndNotify(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V
    .locals 2
    .parameter "file"
    .parameter "operation"

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 120
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    check-cast p1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .end local p1
    invoke-virtual {v1, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->addDirInUpdateList(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V

    .line 116
    :goto_1
    iget-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->isProcess:Z

    if-nez v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;

    invoke-direct {v1, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification$NotificationThread;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 114
    .end local v0           #mThread:Ljava/lang/Thread;
    .restart local p1
    :cond_2
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->updateOpsList:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;

    invoke-virtual {v1, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->addFileInUpdateList(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)V

    goto :goto_1
.end method

.method public synchronousSaveAndNotify(Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;)Z
    .locals 4
    .parameter "opsList"

    .prologue
    const/4 v1, 0x0

    .line 170
    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->mShareXMLManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->saveShareFileList()V

    .line 174
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->toArray()[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    move-result-object v0

    .line 175
    .local v0, dirList:[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/OperationList;->size()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmsUpdateSharedFiles([Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 176
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public synchronousSaveAndNotify(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)Z
    .locals 7
    .parameter "file"
    .parameter "operation"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    if-nez p1, :cond_0

    .line 159
    :goto_0
    return v3

    .line 135
    :cond_0
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareFileNotification;->mShareXMLManager:Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;

    invoke-virtual {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/share/ShareXMLManager;->saveShareFileList()V

    .line 138
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, p1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    if-eqz v5, :cond_1

    move-object v0, p1

    .line 139
    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    .line 140
    .local v0, dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->ALL_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->setAllOrPartFlag(I)V

    .line 147
    :goto_1
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->setOperateFlag(I)V

    .line 149
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->buildShareFiles()V

    .line 150
    const-string v5, "ShareFileNotification"

    const-string v6, "it is share before!"

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v5

    .line 152
    new-array v6, v4, [Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    aput-object v0, v6, v3

    .line 151
    invoke-virtual {v5, v6, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmsUpdateSharedFiles([Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;I)I

    move-result v2

    .line 153
    .local v2, ret:I
    if-nez v2, :cond_2

    .line 154
    const-string v3, "ShareFileNotification"

    const-string v5, "it is share success!"

    invoke-static {v3, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 155
    goto :goto_0

    .line 142
    .end local v0           #dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .end local v2           #ret:I
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getParentPath()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, parentPath:Ljava/lang/String;
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v0       #dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->PART_SHARE_FLAG:Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;

    invoke-virtual {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->getValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->setAllOrPartFlag(I)V

    .line 145
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 158
    .end local v1           #parentPath:Ljava/lang/String;
    .restart local v2       #ret:I
    :cond_2
    const-string v4, "ShareFileNotification"

    const-string v5, "it is share failed!"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
