.class public Lcom/huawei/android/hardware/oeminfo/HwPersistentInfo;
.super Ljava/lang/Object;
.source "HwPersistentInfo.java"


# static fields
.field public static final AP_CFG_CUSTOM_FILE_GPMS_TYPE:I = 0x36

.field public static final NV_GPMS_LEN:I = 0x1

.field public static final OEMINFO_JNI_FAILURE:I = -0x1

.field public static final OEMINFO_JNI_SUCCESS:I = 0x0

.field public static final WRITE_GPMS_SUC:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppFlag()I
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    .line 58
    new-instance v2, Landroid/app/NvramGetSet;

    invoke-direct {v2}, Landroid/app/NvramGetSet;-><init>()V

    .line 59
    .local v2, nvGetSet:Landroid/app/NvramGetSet;
    new-array v4, v5, [B

    .line 60
    .local v4, rnv:[B
    const/4 v1, 0x0

    .line 62
    .local v1, isReadNvSuc:Z
    const/16 v5, 0x36

    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/app/NvramGetSet;->readNV([BIII)Z

    move-result v1

    .line 63
    const-string v5, "HwPersistentInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HwPersistentInfo readNV success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-nez v1, :cond_0

    .line 71
    :goto_0
    return v3

    .line 67
    :cond_0
    const/4 v5, 0x0

    aget-byte v3, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v3, res:I
    goto :goto_0

    .line 69
    .end local v3           #res:I
    :catch_0
    move-exception v0

    .line 70
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setAppFlag(I)I
    .locals 10
    .parameter "flagv"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v9, 0x1

    .line 34
    new-instance v2, Landroid/app/NvramGetSet;

    invoke-direct {v2}, Landroid/app/NvramGetSet;-><init>()V

    .line 35
    .local v2, nvGetSet:Landroid/app/NvramGetSet;
    new-array v3, v9, [B

    .line 36
    .local v3, rnv:[B
    const/4 v1, -0x1

    .line 38
    .local v1, isWriteNvSuc:I
    const/4 v6, 0x0

    int-to-byte v7, p0

    :try_start_0
    aput-byte v7, v3, v6

    .line 39
    const/16 v6, 0x36

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/app/NvramGetSet;->writeNV([BIII)I

    move-result v1

    .line 40
    const-string v6, "HwPersistentInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HwPersistentInfo writeNV success = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    if-ne v9, v1, :cond_0

    .line 48
    :goto_0
    return v4

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 46
    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    move v4, v5

    .line 48
    goto :goto_0
.end method
