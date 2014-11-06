.class public Lcom/android/hwcamera/storage/StoragePath;
.super Ljava/lang/Object;
.source "StoragePath.java"


# instance fields
.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;)V
    .locals 1
    .parameter "mStorageManager"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/storage/StoragePath;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 14
    iput-object p1, p0, Lcom/android/hwcamera/storage/StoragePath;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 15
    return-void
.end method

.method private getStroagePath(Z)Ljava/lang/String;
    .locals 8
    .parameter "isEmulated"

    .prologue
    const/4 v6, 0x0

    .line 30
    iget-object v7, p0, Lcom/android/hwcamera/storage/StoragePath;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_1

    move-object v3, v6

    .line 43
    :cond_0
    :goto_0
    return-object v3

    .line 32
    :cond_1
    iget-object v7, p0, Lcom/android/hwcamera/storage/StoragePath;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 33
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    .line 34
    .local v3, path:Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 35
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    xor-int/2addr v7, p1

    if-eqz v7, :cond_3

    .line 34
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    :cond_3
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v3}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "/mnt/usb"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_4
    move-object v3, v6

    .line 43
    goto :goto_0
.end method


# virtual methods
.method public getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/storage/StoragePath;->getStroagePath(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/storage/StoragePath;->getStroagePath(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mountPoint"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/hwcamera/storage/StoragePath;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
