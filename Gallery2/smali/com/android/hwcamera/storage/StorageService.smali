.class public Lcom/android/hwcamera/storage/StorageService;
.super Ljava/lang/Object;
.source "StorageService.java"


# static fields
.field private static final SD_SCARD_NAME:Ljava/lang/String; = "memorycard"

.field public static final SWAPPED_ERROR:I = 0x2

.field public static final SWAPPED_NO:I = 0x1

.field public static final SWAPPED_YES:I = 0x0

.field public static final TRIGGERED_BY_USER:Ljava/lang/String; = "triggered_by_user"

.field private static final TRIGGERED_ON_RESUME:Ljava/lang/String; = "triggered_on_resume"


# instance fields
.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mIsActualSaveToSdCard:Z

.field private mIsPrioritySaveToSdCard:Z

.field private mIsStorageChangedOnResume:Z

.field private mStoragePath:Lcom/android/hwcamera/storage/StoragePath;

.field private misInitialize:Z


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;)V
    .locals 1
    .parameter "mActivity"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 46
    iput-object p1, p0, Lcom/android/hwcamera/storage/StorageService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 47
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private genHitsResId(Ljava/lang/String;I)I
    .locals 4
    .parameter "action"
    .parameter "swap"

    .prologue
    const/4 v3, 0x2

    .line 99
    invoke-direct {p0}, Lcom/android/hwcamera/storage/StorageService;->isSingleStoragePath()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    if-eq p2, v3, :cond_0

    const/4 v2, -0x1

    .line 122
    :goto_0
    return v2

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/storage/StorageService;->mStoragePath:Lcom/android/hwcamera/storage/StoragePath;

    invoke-virtual {p0}, Lcom/android/hwcamera/storage/StorageService;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/storage/StoragePath;->getStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, state:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/hwcamera/storage/StorageService;->isMediaReadOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0d015d

    goto :goto_0

    :cond_1
    const v2, 0x7f0d015c

    goto :goto_0

    .line 106
    .end local v1           #state:Ljava/lang/String;
    :cond_2
    if-ne p2, v3, :cond_6

    .line 107
    iget-object v2, p0, Lcom/android/hwcamera/storage/StorageService;->mStoragePath:Lcom/android/hwcamera/storage/StoragePath;

    invoke-virtual {p0}, Lcom/android/hwcamera/storage/StorageService;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/storage/StoragePath;->getStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1       #state:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/hwcamera/storage/StorageService;->isSdCardRemoved(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/hwcamera/storage/StorageService;->isMediaUmounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const v2, 0x7f0d0135

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/hwcamera/storage/StorageService;->isMediaReadOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0d0137

    goto :goto_0

    :cond_5
    const v2, 0x7f0d0139

    goto :goto_0

    .line 111
    .end local v1           #state:Ljava/lang/String;
    :cond_6
    const/4 v0, -0x1

    .line 112
    .local v0, messageId:I
    iget-boolean v2, p0, Lcom/android/hwcamera/storage/StorageService;->mIsActualSaveToSdCard:Z

    iget-boolean v3, p0, Lcom/android/hwcamera/storage/StorageService;->mIsPrioritySaveToSdCard:Z

    xor-int/2addr v2, v3

    if-nez v2, :cond_8

    .line 113
    iget-boolean v2, p0, Lcom/android/hwcamera/storage/StorageService;->mIsActualSaveToSdCard:Z

    if-eqz v2, :cond_7

    const v0, 0x7f0d013b

    :goto_1
    move v2, v0

    .line 122
    goto :goto_0

    .line 113
    :cond_7
    const v0, 0x7f0d013c

    goto :goto_1

    .line 115
    :cond_8
    iget-boolean v2, p0, Lcom/android/hwcamera/storage/StorageService;->mIsActualSaveToSdCard:Z

    if-eqz v2, :cond_9

    .line 116
    const v0, 0x7f0d013a

    goto :goto_1

    .line 118
    :cond_9
    iget-object v2, p0, Lcom/android/hwcamera/storage/StorageService;->mStoragePath:Lcom/android/hwcamera/storage/StoragePath;

    invoke-virtual {p0}, Lcom/android/hwcamera/storage/StorageService;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/storage/StoragePath;->getStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1       #state:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/hwcamera/storage/StorageService;->isSdCardRemoved(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0, v1}, Lcom/android/hwcamera/storage/StorageService;->isMediaUmounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const v0, 0x7f0d0134

    :goto_2
    goto :goto_1

    :cond_b
    invoke-direct {p0, v1}, Lcom/android/hwcamera/storage/StorageService;->isMediaReadOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const v0, 0x7f0d0136

    goto :goto_2

    :cond_c
    const v0, 0x7f0d0138

    goto :goto_2
.end method

.method private isMediaReadOnly(Ljava/lang/String;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 136
    const-string v0, "mounted_ro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMediaUmounted(Ljava/lang/String;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 127
    const-string v0, "removed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bad_removal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmounted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmountable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shared"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isSDCardMounted(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/hwcamera/storage/StorageService;->isTriggeredBySys(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isSdCardRemoved(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 172
    invoke-static {p1}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isSingleStoragePath()Z
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/hwcamera/storage/StorageService;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/storage/StorageService;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTriggeredBySys(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/hwcamera/storage/StorageService;->isTriggeredOnResume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/hwcamera/storage/StorageService;->isTriggeredByUser(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTriggeredByUser(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 148
    const-string v0, "triggered_by_user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTriggeredOnResume(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 140
    const-string v0, "triggered_on_resume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private switchStorage(Z)Z
    .locals 5
    .parameter "isSaveToSdCard"

    .prologue
    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/storage/StorageService;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, path:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0x1400000

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 183
    invoke-static {v0}, Lcom/android/hwcamera/storage/Storage;->switchToPath(Ljava/lang/String;)V
    
    iget-object v1, p0, Lcom/android/hwcamera/storage/StorageService;->mActivity:Lcom/android/hwcamera/CameraActivity;
    
    invoke-static {v1}, Lcom/android/hwcamera/storage/Storage;->updateSaveLocationSharedPreferences(Landroid/content/Context;)V

    .line 184
    iput-boolean p1, p0, Lcom/android/hwcamera/storage/StorageService;->mIsActualSaveToSdCard:Z

    .line 185
    const/4 v1, 0x1

    .line 187
    :goto_1
    return v1

    .line 181
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/storage/StorageService;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 187
    .restart local v0       #path:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateHits(ILjava/lang/String;)V
    .locals 4
    .parameter "swap"
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 78
    if-eq p1, v0, :cond_1

    .line 83
    .local v0, isSwap:Z
    :goto_0
    const/4 v2, 0x2

    if-eq v2, p1, :cond_4

    .line 84
    invoke-direct {p0, p2}, Lcom/android/hwcamera/storage/StorageService;->isTriggeredByUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/hwcamera/storage/StorageService;->mIsActualSaveToSdCard:Z

    iget-boolean v3, p0, Lcom/android/hwcamera/storage/StorageService;->mIsPrioritySaveToSdCard:Z

    xor-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 95
    :cond_0
    :goto_1
    return-void

    .line 78
    .end local v0           #isSwap:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    .restart local v0       #isSwap:Z
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/hwcamera/storage/StorageService;->isTriggeredBySys(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    .line 86
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/hwcamera/storage/StorageService;->isTriggeredOnResume(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_0

    .line 89
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/storage/StorageService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v2}, Lcom/android/hwcamera/Util;->isExtalCaptureIntent(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-direct {p0, p2, p1}, Lcom/android/hwcamera/storage/StorageService;->genHitsResId(Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, messageId:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/storage/StorageService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/CameraActivity;->showOnscreenToast(I)V

    goto :goto_1
.end method


# virtual methods
.method public getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/hwcamera/storage/StorageService;->mStoragePath:Lcom/android/hwcamera/storage/StoragePath;

    invoke-virtual {v0}, Lcom/android/hwcamera/storage/StoragePath;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/hwcamera/storage/StorageService;->mStoragePath:Lcom/android/hwcamera/storage/StoragePath;

    invoke-virtual {v0}, Lcom/android/hwcamera/storage/StoragePath;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/hwcamera/storage/StorageService;->misInitialize:Z

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Lcom/android/hwcamera/storage/StoragePath;

    iget-object v0, p0, Lcom/android/hwcamera/storage/StorageService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-direct {v1, v0}, Lcom/android/hwcamera/storage/StoragePath;-><init>(Landroid/os/storage/StorageManager;)V

    iput-object v1, p0, Lcom/android/hwcamera/storage/StorageService;->mStoragePath:Lcom/android/hwcamera/storage/StoragePath;

    .line 52
    const-string v0, "triggered_by_user"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/storage/StorageService;->onStorageChanged(Ljava/lang/String;)Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/storage/StorageService;->misInitialize:Z

    goto :goto_0
.end method

.method public isActualSaveToSdCard()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/hwcamera/storage/StorageService;->mIsActualSaveToSdCard:Z

    return v0
.end method

.method public onStorageChanged(Ljava/lang/String;)Z
    .locals 8
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    iget-boolean v4, p0, Lcom/android/hwcamera/storage/StorageService;->misInitialize:Z

    if-eqz v4, :cond_0

    .line 59
    iget-boolean v4, p0, Lcom/android/hwcamera/storage/StorageService;->mIsActualSaveToSdCard:Z

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/hwcamera/storage/StorageService;->isSdCardRemoved(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    :goto_0
    return v3

    .line 62
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/storage/StorageService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v4}, Lcom/android/hwcamera/ComboPreferences;->get(Landroid/content/Context;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v4

    const-string v5, "pref_camera_storage_path_key"

    iget-object v6, p0, Lcom/android/hwcamera/storage/StorageService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v7, 0x7f0d0125

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, prefValue:Ljava/lang/String;
    const-string v4, "memorycard"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/hwcamera/storage/StorageService;->mIsPrioritySaveToSdCard:Z

    .line 64
    iget-boolean v4, p0, Lcom/android/hwcamera/storage/StorageService;->mIsPrioritySaveToSdCard:Z

    invoke-virtual {p0, p1, v4}, Lcom/android/hwcamera/storage/StorageService;->storageChanged(Ljava/lang/String;Z)I

    move-result v1

    .line 66
    .local v1, swapped:I
    if-ne v1, v2, :cond_1

    iget-boolean v4, p0, Lcom/android/hwcamera/storage/StorageService;->misInitialize:Z

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/storage/StorageService;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->updateStorageSpace()V

    .line 67
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/android/hwcamera/storage/StorageService;->updateHits(ILjava/lang/String;)V

    .line 69
    if-nez v1, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/storage/StorageService;->mIsStorageChangedOnResume:Z

    .line 200
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/hwcamera/storage/StorageService;->mIsStorageChangedOnResume:Z

    if-eqz v0, :cond_0

    const-string v0, "triggered_on_resume"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/storage/StorageService;->onStorageChanged(Ljava/lang/String;)Z

    .line 196
    :cond_0
    return-void
.end method

.method public storageChanged(Ljava/lang/String;Z)I
    .locals 6
    .parameter "action"
    .parameter "isSaveToSdCard"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    invoke-direct {p0, p1}, Lcom/android/hwcamera/storage/StorageService;->isSdCardRemoved(Ljava/lang/String;)Z

    move-result v2

    .line 154
    .local v2, isSdCardUnmounted:Z
    iget-boolean v1, p0, Lcom/android/hwcamera/storage/StorageService;->mIsActualSaveToSdCard:Z

    .line 156
    .local v1, isLastSaveToSdCard:Z
    if-eqz v2, :cond_2

    .line 157
    invoke-direct {p0, v3}, Lcom/android/hwcamera/storage/StorageService;->switchStorage(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/hwcamera/storage/StorageService;->mIsActualSaveToSdCard:Z

    xor-int/2addr v5, v1

    if-eqz v5, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 157
    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/hwcamera/storage/StorageService;->isSDCardMounted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    move v0, v4

    .line 160
    .local v0, isCheckSDCardFirst:Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/hwcamera/storage/StorageService;->switchStorage(Z)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v0, :cond_5

    move v5, v4

    :goto_2
    invoke-direct {p0, v5}, Lcom/android/hwcamera/storage/StorageService;->switchStorage(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    iget-boolean v5, p0, Lcom/android/hwcamera/storage/StorageService;->mIsActualSaveToSdCard:Z

    xor-int/2addr v5, v1

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .end local v0           #isCheckSDCardFirst:Z
    :cond_4
    move v0, v3

    .line 159
    goto :goto_1

    .restart local v0       #isCheckSDCardFirst:Z
    :cond_5
    move v5, v3

    .line 160
    goto :goto_2

    .line 166
    .end local v0           #isCheckSDCardFirst:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/hwcamera/storage/StorageService;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/storage/Storage;->switchToPath(Ljava/lang/String;)V
    
    iget-object v4, p0, Lcom/android/hwcamera/storage/StorageService;->mActivity:Lcom/android/hwcamera/CameraActivity;
    
    invoke-static {v4}, Lcom/android/hwcamera/storage/Storage;->updateSaveLocationSharedPreferences(Landroid/content/Context;)V

    .line 167
    iput-boolean v3, p0, Lcom/android/hwcamera/storage/StorageService;->mIsActualSaveToSdCard:Z

    .line 168
    const/4 v3, 0x2

    goto :goto_0
.end method
