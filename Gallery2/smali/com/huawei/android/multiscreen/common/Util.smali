.class public Lcom/huawei/android/multiscreen/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AirSharingPublic_Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefaultImagePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    .line 61
    const-class v8, Lcom/huawei/android/multiscreen/common/Util;

    monitor-enter v8

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v9, "dlna_default_image.jpg"

    invoke-direct {v3, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 104
    :goto_0
    monitor-exit v8

    return-object v7

    .line 66
    :cond_0
    const/4 v6, 0x0

    .line 67
    .local v6, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 69
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v9, "dlna_default_image.jpg"

    invoke-virtual {v7, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v6

    .line 71
    if-nez v6, :cond_3

    .line 89
    if-eqz v6, :cond_1

    .line 90
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 98
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 72
    :cond_2
    :goto_2
    :try_start_4
    const-string v7, ""

    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 61
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v6           #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 100
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 101
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 75
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :try_start_6
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 76
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 77
    .local v1, bytesRead:I
    const/16 v7, 0x2000

    :try_start_7
    new-array v0, v7, [B

    .line 78
    .local v0, buffer:[B
    :goto_3
    const/4 v7, 0x0

    const/16 v9, 0x2000

    invoke-virtual {v6, v0, v7, v9}, Ljava/io/InputStream;->read([BII)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_6

    .line 89
    if-eqz v6, :cond_4

    .line 90
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 97
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    .line 98
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 104
    :cond_5
    :goto_5
    :try_start_a
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 79
    :cond_6
    const/4 v7, 0x0

    :try_start_b
    invoke-virtual {v5, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_3

    .line 81
    .end local v0           #buffer:[B
    :catch_2
    move-exception v2

    move-object v4, v5

    .line 82
    .end local v1           #bytesRead:I
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_6
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 89
    if-eqz v6, :cond_7

    .line 90
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 97
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_7
    :goto_7
    if-eqz v4, :cond_8

    .line 98
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 83
    :cond_8
    :goto_8
    :try_start_f
    const-string v7, ""

    goto :goto_0

    .line 92
    .restart local v2       #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 93
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 100
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 101
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 84
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 85
    .restart local v2       #e:Ljava/io/IOException;
    :goto_9
    :try_start_10
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 89
    if-eqz v6, :cond_9

    .line 90
    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 97
    :cond_9
    :goto_a
    if-eqz v4, :cond_a

    .line 98
    :try_start_12
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 86
    :cond_a
    :goto_b
    :try_start_13
    const-string v7, ""

    goto :goto_0

    .line 92
    :catch_6
    move-exception v2

    .line 93
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 100
    :catch_7
    move-exception v2

    .line 101
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_b

    .line 87
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v7

    .line 89
    :goto_c
    if-eqz v6, :cond_b

    .line 90
    :try_start_14
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    .line 97
    :cond_b
    :goto_d
    if-eqz v4, :cond_c

    .line 98
    :try_start_15
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    .line 103
    :cond_c
    :goto_e
    :try_start_16
    throw v7

    .line 92
    :catch_8
    move-exception v2

    .line 93
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 100
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 101
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 92
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v2

    .line 93
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 100
    .end local v2           #e:Ljava/io/IOException;
    :catch_b
    move-exception v2

    .line 101
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_5

    .line 87
    .end local v0           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_c

    .line 84
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v2

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_9

    .line 81
    .end local v1           #bytesRead:I
    :catch_d
    move-exception v2

    goto :goto_6
.end method

.method public static isServiceAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 157
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSupportMultiscreen()Z
    .locals 2

    .prologue
    .line 167
    const-string v0, "ro.config.hw_multiscreen"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUsable(Ljava/lang/String;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 48
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static transportMediaType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)I
    .locals 2
    .parameter "eType"

    .prologue
    .line 115
    const/4 v0, 0x1

    .line 116
    .local v0, result:I
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-ne p0, v1, :cond_1

    .line 117
    const/4 v0, 0x3

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-ne p0, v1, :cond_2

    .line 119
    const/4 v0, 0x4

    goto :goto_0

    .line 120
    :cond_2
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->AUDIO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-ne p0, v1, :cond_0

    .line 121
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static transportVersionMatching(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;)I
    .locals 2
    .parameter "version"

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, result:I
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->LocalLower:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    if-ne p0, v1, :cond_1

    .line 137
    const/4 v0, 0x1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;->RemoteLower:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    if-ne p0, v1, :cond_0

    .line 139
    const/4 v0, 0x2

    goto :goto_0
.end method
