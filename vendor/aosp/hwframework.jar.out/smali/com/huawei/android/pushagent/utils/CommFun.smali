.class public Lcom/huawei/android/pushagent/utils/CommFun;
.super Ljava/lang/Object;
.source "CommFun.java"


# static fields
.field private static final PUSH_DEVICE_INFO:Ljava/lang/String; = "device_info"

.field private static final STOREAGE_LOG_FILE_SPACE_MAX:I = 0x200000

.field static final TAG:Ljava/lang/String; = "PushLog2510"

.field private static final hexDigits:[C

.field private static mStoreFileIndex:I

.field private static final storeLogFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    sput v2, Lcom/huawei/android/pushagent/utils/CommFun;->mStoreFileIndex:I

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "log_push.txt"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "log_push2.txt"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "log_push3.txt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/pushagent/utils/CommFun;->storeLogFiles:[Ljava/lang/String;

    .line 67
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/android/pushagent/utils/CommFun;->hexDigits:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2HexString(B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 100
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 102
    .local v0, chars:[C
    const/4 v1, 0x0

    sget-object v2, Lcom/huawei/android/pushagent/utils/CommFun;->hexDigits:[C

    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 103
    const/4 v1, 0x1

    sget-object v2, Lcom/huawei/android/pushagent/utils/CommFun;->hexDigits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 105
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static byte2HexString([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v3, 0x0

    .line 91
    :goto_0
    return-object v3

    .line 79
    :cond_0
    array-length v3, p0

    if-nez v3, :cond_1

    .line 80
    const-string v3, ""

    goto :goto_0

    .line 83
    :cond_1
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [C

    .line 85
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 86
    aget-byte v0, p0, v2

    .line 87
    .local v0, b:I
    mul-int/lit8 v3, v2, 0x2

    sget-object v4, Lcom/huawei/android/pushagent/utils/CommFun;->hexDigits:[C

    and-int/lit16 v5, v0, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 88
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/huawei/android/pushagent/utils/CommFun;->hexDigits:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v0           #b:I
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static byteArrayToInt([B)I
    .locals 2
    .parameter "bytes"

    .prologue
    .line 141
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static byteArrayToShort([B)I
    .locals 2
    .parameter "bytes"

    .prologue
    .line 167
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static byteToLong([B)J
    .locals 7
    .parameter "b"

    .prologue
    const-wide/16 v5, 0xff

    .line 204
    const-wide/16 v0, 0x0

    .line 205
    .local v0, l:J
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 206
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 207
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 208
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 209
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 210
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 211
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 212
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    .line 213
    return-wide v0
.end method

.method public static clearMemory(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1162
    :try_start_0
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1163
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->tokenMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1164
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->clearMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :goto_0
    return-void

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PushLog2510"

    const-string v2, "clearMemory failed!"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static ctrlSockets(II)I
    .locals 8
    .parameter "cmd"
    .parameter "socketId"

    .prologue
    .line 713
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter ctrlSockets(cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " param:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/4 v2, -0x2

    .line 716
    .local v2, ret:I
    :try_start_0
    const-string v3, "dalvik.system.Zygote"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "ctrlSockets"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 717
    .local v1, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v2

    .line 729
    .end local v1           #m:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v3, "PushLog2510"

    const-string v4, "There is no method of ctrlSockets."

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 721
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v3, "PushLog2510"

    const-string v4, "There is no method of ctrlSockets."

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 722
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 723
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "PushLog2510"

    const-string v4, "There is no method of ctrlSockets."

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 725
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v3, "PushLog2510"

    const-string v4, "There is no method of ctrlSockets."

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 726
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 727
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "PushLog2510"

    const-string v4, "There is no method of ctrlSockets."

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static deleteClientFiles(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1187
    const-string v0, "PushAppNotifiCfg"

    invoke-static {p0, v0}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1188
    const-string v0, "pclient_request_info"

    invoke-static {p0, v0}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1189
    const-string v0, "pclient_unRegist_info"

    invoke-static {p0, v0}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1190
    const-string v0, "pclient_info"

    invoke-static {p0, v0}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1191
    return-void
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .locals 6
    .parameter "dir"

    .prologue
    const/4 v3, 0x0

    .line 661
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 662
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, children:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 664
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/huawei/android/pushagent/utils/CommFun;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 665
    .local v2, success:Z
    if-nez v2, :cond_1

    .line 671
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :cond_0
    :goto_1
    return v3

    .line 663
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #success:Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    .end local v2           #success:Z
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method public static deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "prefrenceFileName"

    .prologue
    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/shared_prefs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, filePathName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 678
    .local v1, pFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter deletePrefrence(fileName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 687
    :goto_0
    return v2

    .line 682
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 683
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete File:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static deleteSameFiles(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1172
    :try_start_0
    const-string v3, "PushConnectControl"

    invoke-static {p0, v3}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1173
    const-string v3, "PushRouteInfo"

    invoke-static {p0, v3}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1174
    const-string v3, "RouteInfo"

    invoke-static {p0, v3}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1175
    const-string v3, "HeartBeatCfg"

    invoke-static {p0, v3}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1176
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getHeartBeatCfgFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1177
    .local v2, s:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1181
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1182
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PushLog2510"

    const-string v4, "deleteSameFiles failed!"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1179
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v3, "socket_info"

    invoke-static {p0, v3}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1180
    const-string v3, "update_remind"

    invoke-static {p0, v3}, Lcom/huawei/android/pushagent/utils/CommFun;->deletePrefrence(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getApnType(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 1078
    const-string v6, ""

    .line 1079
    .local v6, apntype:Ljava/lang/String;
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1080
    .local v1, preferred_apn_uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1082
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1083
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    const-string v0, "apn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1089
    :cond_0
    if-eqz v7, :cond_1

    .line 1090
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1094
    :cond_1
    :goto_0
    if-nez v6, :cond_2

    .line 1095
    const-string v6, ""

    .line 1097
    :cond_2
    const-string v0, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push apn is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    return-object v6

    .line 1086
    :catch_0
    move-exception v8

    .line 1087
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get apn cause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1089
    if-eqz v7, :cond_1

    .line 1090
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1089
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1090
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getAvailableNetwork(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 547
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 549
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v3

    .line 553
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 554
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 558
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 559
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 560
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    goto :goto_0

    .line 558
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getClientAppByAction(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCompentInfoByName(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v3, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ComponentInfo;>;"
    if-nez p0, :cond_1

    const/4 v2, 0x0

    .line 646
    .local v2, num:I
    :goto_0
    if-gtz v2, :cond_2

    .line 656
    :cond_0
    return-object v3

    .line 645
    .end local v2           #num:I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 649
    .restart local v2       #num:I
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 650
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 651
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_4

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 652
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_2
    if-eqz p1, :cond_3

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 653
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 651
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    :cond_4
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_2
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x0

    .line 240
    const-string v0, "0"

    .line 241
    .local v0, ZERO:Ljava/lang/String;
    const-string v1, ""

    .line 243
    .local v1, deviceId:Ljava/lang/String;
    new-instance v7, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v10, "device_info"

    invoke-direct {v7, p0, v10}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    .local v7, prefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    const-string v10, "deviceId"

    invoke-virtual {v7, v10}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 246
    const-string v10, "deviceId"

    invoke-virtual {v7, v10}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v13, :cond_1

    move-object v2, v1

    .line 306
    .end local v1           #deviceId:Ljava/lang/String;
    .local v2, deviceId:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 251
    .end local v2           #deviceId:Ljava/lang/String;
    .restart local v1       #deviceId:Ljava/lang/String;
    :cond_0
    const-string v10, "PushLog2510"

    const-string v11, "no deviceId in device_info, will new it"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    const-string v11, "shared_prefs"

    invoke-direct {v5, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v5, pcfile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 256
    new-instance v6, Ljava/io/File;

    const-string v10, "pclient_info.xml"

    invoke-direct {v6, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    .local v6, pclientFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 258
    const-string v10, "PushLog2510"

    const-string v11, "have no device id, so delete the pclient_info.xml,success!"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .end local v6           #pclientFile:Ljava/io/File;
    :cond_2
    :goto_1
    new-instance v7, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    .end local v7           #prefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    const-string v10, "device_info"

    invoke-direct {v7, p0, v10}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    .restart local v7       #prefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 269
    .local v9, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v9, :cond_4

    .line 270
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "[0]+"

    invoke-virtual {v1, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 272
    :cond_3
    invoke-static {}, Lcom/huawei/android/pushagent/utils/CommFun;->getUUID()Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_4
    :goto_2
    const-string v10, "deviceId"

    invoke-virtual {v7, v10, v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 301
    const-string v10, "PushLog2510"

    const-string v11, "save deviceId failed "

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_5
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get the device Id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 306
    .end local v1           #deviceId:Ljava/lang/String;
    .restart local v2       #deviceId:Ljava/lang/String;
    goto/16 :goto_0

    .line 260
    .end local v2           #deviceId:Ljava/lang/String;
    .end local v9           #telephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v1       #deviceId:Ljava/lang/String;
    .restart local v6       #pclientFile:Ljava/io/File;
    :cond_6
    const-string v10, "PushLog2510"

    const-string v11, "the file maybe not exists or delete failed."

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 275
    .end local v6           #pclientFile:Ljava/io/File;
    .restart local v9       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v13, :cond_8

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x10

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 278
    :cond_8
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 279
    .local v8, sbuf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, len:I
    :goto_3
    rsub-int/lit8 v10, v4, 0xe

    if-gt v3, v10, :cond_9

    .line 280
    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 283
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 284
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v8, v12, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 288
    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_4
    rsub-int/lit8 v10, v4, 0x10

    if-ge v3, v10, :cond_b

    .line 289
    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 292
    :cond_b
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 293
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v8, v12, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_2
.end method

.method public static getEmuiVersion()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1107
    const-string v3, ""

    .line 1108
    .local v3, emuiVerion:Ljava/lang/String;
    new-array v1, v9, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v8

    .line 1109
    .local v1, clsArray:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-array v5, v9, [Ljava/lang/Object;

    const-string v7, "ro.build.version.emui"

    aput-object v7, v5, v8

    .line 1111
    .local v5, objArray:[Ljava/lang/Object;
    :try_start_0
    const-string v7, "android.os.SystemProperties"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1112
    .local v0, SystemPropertiesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "get"

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1113
    .local v4, get:Ljava/lang/reflect/Method;
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1114
    .local v6, version:Ljava/lang/String;
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get EMUI version is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v7

    if-nez v7, :cond_0

    .line 1129
    .end local v0           #SystemPropertiesClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #get:Ljava/lang/reflect/Method;
    .end local v6           #version:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1118
    :catch_0
    move-exception v2

    .line 1119
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v7, "PushLog2510"

    const-string v8, " getEmuiVersion wrong, ClassNotFoundException"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    move-object v6, v3

    .line 1129
    goto :goto_0

    .line 1120
    :catch_1
    move-exception v2

    .line 1121
    .local v2, e:Ljava/lang/LinkageError;
    const-string v7, "PushLog2510"

    const-string v8, " getEmuiVersion wrong, LinkageError"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1122
    .end local v2           #e:Ljava/lang/LinkageError;
    :catch_2
    move-exception v2

    .line 1123
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v7, "PushLog2510"

    const-string v8, " getEmuiVersion wrong, NoSuchMethodException"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1124
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 1125
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v7, "PushLog2510"

    const-string v8, " getEmuiVersion wrong, NullPointerException"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1126
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_4
    move-exception v2

    .line 1127
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "PushLog2510"

    const-string v8, " getEmuiVersion wrong"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getLongTime(Ljava/lang/String;)J
    .locals 8
    .parameter "timeStr"

    .prologue
    .line 431
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 432
    .local v2, format:Ljava/text/SimpleDateFormat;
    const-wide/16 v3, -0x1

    .line 434
    .local v3, longTime:J
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 435
    .local v0, date:Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 441
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    :goto_0
    return-wide v3

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, e:Ljava/text/ParseException;
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ParseException,timeStr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMCCMNC(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 360
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 361
    .local v3, telManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, mccMnc:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 364
    const-string v2, ""

    .line 372
    .end local v2           #mccMnc:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 366
    .restart local v2       #mccMnc:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 367
    .local v1, mccArr:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 368
    aget-char v4, v1, v0

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    aget-char v4, v1, v0

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    .line 369
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 367
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getMetaDataValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "metaDataName"

    .prologue
    const/4 v4, 0x0

    .line 1044
    const/4 v3, 0x0

    .line 1046
    .local v3, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1047
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_1

    .line 1048
    :cond_0
    const-string v5, "PushLog2510"

    const-string v6, "could not read Applicationinfo from AndroidManifest.xml."

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v4

    .line 1052
    .restart local v1       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1053
    .local v2, temp:Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 1054
    const-string v5, "PushLog2510"

    const-string v6, "could not read meta-data from AndroidManifest.xml."

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1060
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v2           #temp:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1061
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PushLog2510"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    move-object v4, v3

    .line 1064
    goto :goto_0

    .line 1058
    .restart local v1       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #temp:Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1059
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read meta-data from AndroidManifest.xml,name is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",value is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 385
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 387
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    return v1
.end method

.method public static getPackageIntentByAct(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "packageName"
    .parameter "action"

    .prologue
    .line 541
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    return-object v0
.end method

.method public static getPackageNameWithChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1068
    const-string v2, "CHANNEL"

    invoke-static {p0, p1, v2}, Lcom/huawei/android/pushagent/utils/CommFun;->getMetaDataValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, downloadChannel:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1074
    .end local p1
    :goto_0
    return-object p1

    .line 1072
    .restart local p1
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, newPackageName:Ljava/lang/String;
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after add downloadChannel, the new packageName is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v1

    .line 1074
    goto :goto_0
.end method

.method public static getPkgNameByReciveAction(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 575
    .local v0, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    const/4 v3, 0x0

    .line 576
    .local v3, num:I
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v4, pkgNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-gtz v3, :cond_2

    .line 586
    :cond_0
    return-object v4

    .line 575
    .end local v3           #num:I
    .end local v4           #pkgNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 581
    .restart local v3       #num:I
    .restart local v4       #pkgNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 582
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 583
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_3

    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 584
    .local v1, ci:Landroid/content/pm/ComponentInfo;
    :goto_2
    iget-object v6, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 583
    .end local v1           #ci:Landroid/content/pm/ComponentInfo;
    :cond_3
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_2
.end method

.method public static getPkgNameByReciveActionOnly(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "context"
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 590
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 591
    .local v0, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    .line 592
    .local v3, num:I
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v4, pkgNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-gtz v3, :cond_2

    .line 602
    :cond_0
    return-object v4

    .line 591
    .end local v3           #num:I
    .end local v4           #pkgNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 597
    .restart local v3       #num:I
    .restart local v4       #pkgNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 598
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 599
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_3

    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 600
    .local v1, ci:Landroid/content/pm/ComponentInfo;
    :goto_2
    iget-object v6, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 599
    .end local v1           #ci:Landroid/content/pm/ComponentInfo;
    :cond_3
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_2
.end method

.method public static getPushSelfToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResolveInfoByAction(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 612
    .local v0, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 613
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 615
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 825
    const/4 v1, 0x0

    .line 826
    .local v1, sdDir:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 827
    .local v0, sdCardExist:Z
    if-eqz v0, :cond_0

    .line 828
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 829
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 831
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSocketFd(Ljava/net/Socket;)I
    .locals 7
    .parameter "sock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 733
    const/4 v3, 0x0

    .line 735
    .local v3, ret:I
    :try_start_0
    const-class v4, Ljava/net/Socket;

    const-string v5, "getFileDescriptor$"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 736
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileDescriptor;

    .line 737
    .local v1, fd:Ljava/io/FileDescriptor;
    const-class v4, Ljava/io/FileDescriptor;

    const-string v5, "getInt$"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 738
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v3

    .line 748
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v2           #m:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "PushLog2510"

    const-string v5, "There is no method of ctrlSockets."

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 741
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 742
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "PushLog2510"

    const-string v5, "There is no method of ctrlSockets."

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 743
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 744
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v4, "PushLog2510"

    const-string v5, "There is no method of ctrlSockets."

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 746
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "PushLog2510"

    const-string v5, "There is no method of ctrlSockets."

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSystemexValue(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "methodName"
    .parameter "parameterTypes"
    .parameter "args"

    .prologue
    const/4 v9, 0x0

    .line 458
    const/4 v7, 0x0

    .line 459
    .local v7, systemexClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v10, Landroid/provider/Settings;

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v6

    .line 460
    .local v6, settingsClass:[Ljava/lang/Class;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/Class;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v8, v0, v2

    .line 461
    .local v8, tempClass:Ljava/lang/Class;
    const-string v10, "Systemex"

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 462
    move-object v7, v8

    .line 467
    .end local v8           #tempClass:Ljava/lang/Class;
    :cond_0
    if-nez v7, :cond_2

    .line 468
    const-string v10, "PushLog2510"

    const-string v11, "Settings.Systemex is null"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 501
    :goto_1
    return-object v5

    .line 460
    .restart local v8       #tempClass:Ljava/lang/Class;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v8           #tempClass:Ljava/lang/Class;
    :cond_2
    const/4 v4, 0x0

    .line 474
    .local v4, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v7, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 485
    const/4 v5, 0x0

    .line 487
    .local v5, rc:Ljava/lang/Object;
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v4, v10, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    goto :goto_1

    .line 475
    .end local v5           #rc:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 476
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 477
    const-string v10, "PushLog2510"

    const-string v11, "Settings.Systemex.getString is SecurityException"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 478
    goto :goto_1

    .line 479
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 480
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 481
    const-string v10, "PushLog2510"

    const-string v11, "Settings.Systemex.getString is SecurityException"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 482
    goto :goto_1

    .line 488
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    .restart local v5       #rc:Ljava/lang/Object;
    :catch_2
    move-exception v1

    .line 489
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 490
    const-string v10, "PushLog2510"

    const-string v11, "method.invoke IllegalArgumentException"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 491
    goto :goto_1

    .line 492
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 493
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 494
    const-string v10, "PushLog2510"

    const-string v11, "method.invoke IllegalAccessException"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 495
    goto :goto_1

    .line 496
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 497
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 498
    const-string v10, "PushLog2510"

    const-string v11, "method.invoke InvocationTargetException"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 499
    goto :goto_1
.end method

.method public static getSystemexValueAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "key"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 452
    const-string v0, "getString"

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/content/ContentResolver;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v5

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/huawei/android/pushagent/utils/CommFun;->getSystemexValue(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getTimeString(JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "milliseconds"
    .parameter "formatType"

    .prologue
    .line 419
    const-string v3, ""

    .line 421
    .local v3, strDate:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 422
    .local v2, format:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 423
    .local v0, curDate:Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 427
    .end local v0           #curDate:Ljava/util/Date;
    .end local v2           #format:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeString,milliseconds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xf

    .line 326
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, uuid:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "000000000000000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 336
    const/16 v0, 0x9ce

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXMLFileNames(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 980
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 981
    .local v0, cache:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/shared_prefs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 982
    .local v1, spDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 985
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hexString2ByteArray(Ljava/lang/String;)[B
    .locals 12
    .parameter "str"

    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v5, v7, 0x2

    .line 116
    .local v5, length:I
    new-array v2, v5, [B

    .line 119
    .local v2, bytes:[B
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 120
    .local v6, source:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_0

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    mul-int/lit8 v11, v4, 0x2

    aget-byte v11, v6, v11

    aput-byte v11, v9, v10

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 122
    .local v0, bh:B
    shl-int/lit8 v7, v0, 0x4

    int-to-byte v0, v7

    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    mul-int/lit8 v11, v4, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, v6, v11

    aput-byte v11, v9, v10

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 124
    .local v1, bl:B
    xor-int v7, v0, v1

    int-to-byte v7, v7

    aput-byte v7, v2, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    .end local v0           #bh:B
    .end local v1           #bl:B
    .end local v4           #i:I
    .end local v6           #source:[B
    :catch_0
    move-exception v3

    .line 128
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 131
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-object v2
.end method

.method public static intToByteArray(I)[B
    .locals 3
    .parameter "i"

    .prologue
    .line 150
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 152
    .local v0, result:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 153
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 155
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 157
    return-object v0
.end method

.method public static isFrameworkPushExist(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1263
    :try_start_0
    const-string v5, "CN"

    const-string v6, "ro.product.locale.region"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1264
    .local v1, isCN:Z
    const-string v5, "ro.config.push_enable"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1265
    .local v2, isFrameworkPushEnable:Z
    if-nez v2, :cond_0

    .line 1266
    const-string v5, "PushLog2510"

    const-string v6, "framework not support push"

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    .end local v1           #isCN:Z
    .end local v2           #isFrameworkPushEnable:Z
    :goto_0
    return v4

    .line 1271
    .restart local v1       #isCN:Z
    .restart local v2       #isFrameworkPushEnable:Z
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "android"

    const-string v8, "com.huawei.android.pushagentproxy.PushService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1274
    .local v3, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 1275
    :cond_1
    const-string v5, "PushLog2510"

    const-string v6, "framework push not exist, need vote apk or sdk to support pushservice"

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1281
    .end local v1           #isCN:Z
    .end local v2           #isFrameworkPushEnable:Z
    .end local v3           #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 1282
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Apk version faild ,Exception e= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1278
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #isCN:Z
    .restart local v2       #isFrameworkPushEnable:Z
    .restart local v3       #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :try_start_1
    const-string v5, "PushLog2510"

    const-string v6, "framework push exist, use framework push first"

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1279
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v2, 0x0

    .line 1194
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return v2

    .line 1197
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1198
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 1201
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    const/4 v2, 0x1

    goto :goto_0

    .line 1203
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1204
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static final isIpAddress(Ljava/lang/String;)Z
    .locals 11
    .parameter "str"

    .prologue
    const/4 v7, 0x0

    .line 505
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 506
    const-string v8, "PushLog2510"

    const-string v9, "TextCommFun.isEmpty"

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :goto_0
    return v7

    .line 510
    :cond_0
    const-string v8, "\\."

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, segment:[Ljava/lang/String;
    if-eqz v6, :cond_1

    array-length v8, v6

    const/4 v9, 0x4

    if-eq v8, v9, :cond_2

    .line 513
    :cond_1
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " segment == null || segment.length != 4"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_2
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v5, v0, v1

    .line 519
    .local v5, seg:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 520
    .local v2, iseg:I
    if-ltz v2, :cond_3

    const/16 v8, 0xff

    if-le v2, v8, :cond_4

    .line 521
    :cond_3
    const-string v8, "PushLog2510"

    const-string v9, "iseg < 0 ||iseg > 255"

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    .end local v1           #i$:I
    .end local v2           #iseg:I
    .end local v3           #len$:I
    .end local v5           #seg:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 526
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v8, "PushLog2510"

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #i$:I
    .restart local v2       #iseg:I
    .restart local v3       #len$:I
    .restart local v5       #seg:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    .end local v2           #iseg:I
    .end local v5           #seg:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isPushClient(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 619
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    const/4 v0, 0x0

    .line 627
    :goto_0
    return v0

    .line 622
    :cond_0
    const/4 v0, 0x0

    .line 623
    .local v0, isPushClient:Z
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.android.push.intent.REGISTRATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/huawei/android/pushagent/utils/CommFun;->getResolveInfoByAction(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 624
    const/4 v0, 0x1

    .line 626
    :cond_1
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPushClient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isPushLight(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 632
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    const/4 v0, 0x1

    .line 640
    :goto_0
    return v0

    .line 635
    :cond_0
    const/4 v0, 0x1

    .line 636
    .local v0, isPushLight:Z
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.android.push.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/huawei/android/pushagent/utils/CommFun;->getResolveInfoByAction(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 637
    const/4 v0, 0x0

    .line 639
    :cond_1
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPushLight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSameSubNetwork(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "ip1"
    .parameter "ip2"

    .prologue
    const/4 v2, 0x0

    .line 398
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v2

    .line 402
    :cond_1
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, sub1:Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, sub2:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSimCardOk(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1252
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1254
    .local v0, manager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1255
    const/4 v1, 0x1

    .line 1257
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static longToByteArray(J)[B
    .locals 4
    .parameter "l"

    .prologue
    const/16 v3, 0x8

    .line 189
    new-array v1, v3, [B

    .line 190
    .local v1, result:[B
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 191
    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 192
    shr-long/2addr p0, v3

    .line 190
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 194
    :cond_0
    return-object v1
.end method

.method public static powerLow()V
    .locals 8

    .prologue
    .line 694
    const-string v3, "PushLog2510"

    const-string v4, "enter powerLow"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const/16 v0, 0x77

    .line 697
    .local v0, HW_PUSH_FINISH:I
    :try_start_0
    const-string v3, "android.util.LogPower"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "push"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 698
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 710
    .end local v2           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v1

    .line 700
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v3, "PushLog2510"

    const-string v4, "need not support LogPower"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 701
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 702
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v3, "PushLog2510"

    const-string v4, "need not support LogPower"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 704
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "PushLog2510"

    const-string v4, "need not support LogPower"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 705
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 706
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v3, "PushLog2510"

    const-string v4, "need not support LogPower"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 708
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "PushLog2510"

    const-string v4, "need not support LogPower"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readFileByChars(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 989
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 990
    .local v2, cache:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 991
    .local v6, info:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 992
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1035
    :cond_1
    :goto_0
    return-object v9

    .line 994
    :cond_2
    new-instance v5, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/shared_prefs/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 995
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_4

    .line 996
    :cond_3
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot read "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1000
    :cond_4
    const/high16 v1, 0x60

    .line 1001
    .local v1, MAX_SHOW_FILE_LEN:I
    const/4 v7, 0x0

    .line 1003
    .local v7, reader:Ljava/io/Reader;
    :try_start_0
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start to  read file:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " len: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    int-to-long v13, v1

    cmp-long v11, v11, v13

    if-lez v11, :cond_5

    .line 1005
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is too big: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/32 v14, 0x100000

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "M, cannot be show, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "max show fileSize:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "M!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1007
    .local v9, showInfo:Ljava/lang/String;
    const-string v11, "PushLog2510"

    invoke-static {v11, v9}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 1027
    if-eqz v7, :cond_1

    .line 1029
    :try_start_1
    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1030
    :catch_0
    move-exception v4

    .line 1031
    .local v4, e:Ljava/io/IOException;
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reader.close()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1010
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #showInfo:Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v11, v11

    new-array v10, v11, [C

    .line 1011
    .local v10, tempchars:[C
    const/4 v3, 0x0

    .line 1012
    .local v3, charread:I
    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v12, "UTF-8"

    invoke-direct {v8, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 1013
    .end local v7           #reader:Ljava/io/Reader;
    .local v8, reader:Ljava/io/Reader;
    :goto_1
    :try_start_3
    invoke-virtual {v8, v10}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_7

    .line 1014
    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    goto :goto_1

    .line 1017
    :catch_1
    move-exception v4

    move-object v7, v8

    .line 1018
    .end local v3           #charread:I
    .end local v8           #reader:Ljava/io/Reader;
    .end local v10           #tempchars:[C
    .local v4, e:Ljava/lang/NullPointerException;
    .restart local v7       #reader:Ljava/io/Reader;
    :goto_2
    :try_start_4
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readFileByChars"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1027
    if-eqz v7, :cond_6

    .line 1029
    :try_start_5
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1035
    .end local v4           #e:Ljava/lang/NullPointerException;
    :cond_6
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 1027
    .end local v7           #reader:Ljava/io/Reader;
    .restart local v3       #charread:I
    .restart local v8       #reader:Ljava/io/Reader;
    .restart local v10       #tempchars:[C
    :cond_7
    if-eqz v8, :cond_9

    .line 1029
    :try_start_6
    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v7, v8

    .line 1032
    .end local v8           #reader:Ljava/io/Reader;
    .restart local v7       #reader:Ljava/io/Reader;
    goto :goto_3

    .line 1030
    .end local v7           #reader:Ljava/io/Reader;
    .restart local v8       #reader:Ljava/io/Reader;
    :catch_2
    move-exception v4

    .line 1031
    .local v4, e:Ljava/io/IOException;
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reader.close()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 1032
    .end local v8           #reader:Ljava/io/Reader;
    .restart local v7       #reader:Ljava/io/Reader;
    goto :goto_3

    .line 1030
    .end local v3           #charread:I
    .end local v10           #tempchars:[C
    .local v4, e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v4

    .line 1031
    .local v4, e:Ljava/io/IOException;
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reader.close()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1020
    .end local v4           #e:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 1021
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    :goto_4
    :try_start_7
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readFileByChars"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1027
    if-eqz v7, :cond_6

    .line 1029
    :try_start_8
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 1030
    :catch_5
    move-exception v4

    .line 1031
    .local v4, e:Ljava/io/IOException;
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reader.close()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1022
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 1023
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_9
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readFileByChars"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1027
    if-eqz v7, :cond_6

    .line 1029
    :try_start_a
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_3

    .line 1030
    :catch_7
    move-exception v4

    .line 1031
    .local v4, e:Ljava/io/IOException;
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reader.close()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1024
    .end local v4           #e:Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 1025
    .restart local v4       #e:Ljava/io/IOException;
    :goto_6
    :try_start_b
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readFileByChars"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1027
    if-eqz v7, :cond_6

    .line 1029
    :try_start_c
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_3

    .line 1030
    :catch_9
    move-exception v4

    .line 1031
    const-string v11, "PushLog2510"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reader.close()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1027
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v7, :cond_8

    .line 1029
    :try_start_d
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 1032
    :cond_8
    :goto_8
    throw v11

    .line 1030
    :catch_a
    move-exception v4

    .line 1031
    .restart local v4       #e:Ljava/io/IOException;
    const-string v12, "PushLog2510"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reader.close()"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1027
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #reader:Ljava/io/Reader;
    .restart local v3       #charread:I
    .restart local v8       #reader:Ljava/io/Reader;
    .restart local v10       #tempchars:[C
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8           #reader:Ljava/io/Reader;
    .restart local v7       #reader:Ljava/io/Reader;
    goto :goto_7

    .line 1024
    .end local v7           #reader:Ljava/io/Reader;
    .restart local v8       #reader:Ljava/io/Reader;
    :catch_b
    move-exception v4

    move-object v7, v8

    .end local v8           #reader:Ljava/io/Reader;
    .restart local v7       #reader:Ljava/io/Reader;
    goto :goto_6

    .line 1022
    .end local v7           #reader:Ljava/io/Reader;
    .restart local v8       #reader:Ljava/io/Reader;
    :catch_c
    move-exception v4

    move-object v7, v8

    .end local v8           #reader:Ljava/io/Reader;
    .restart local v7       #reader:Ljava/io/Reader;
    goto/16 :goto_5

    .line 1020
    .end local v7           #reader:Ljava/io/Reader;
    .restart local v8       #reader:Ljava/io/Reader;
    :catch_d
    move-exception v4

    move-object v7, v8

    .end local v8           #reader:Ljava/io/Reader;
    .restart local v7       #reader:Ljava/io/Reader;
    goto/16 :goto_4

    .line 1017
    .end local v3           #charread:I
    .end local v10           #tempchars:[C
    :catch_e
    move-exception v4

    goto/16 :goto_2

    .end local v7           #reader:Ljava/io/Reader;
    .restart local v3       #charread:I
    .restart local v8       #reader:Ljava/io/Reader;
    .restart local v10       #tempchars:[C
    :cond_9
    move-object v7, v8

    .end local v8           #reader:Ljava/io/Reader;
    .restart local v7       #reader:Ljava/io/Reader;
    goto/16 :goto_3
.end method

.method public static removeNotExistPackage(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1211
    :try_start_0
    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    const-string v5, "pclient_info"

    invoke-direct {v0, p0, v5}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1212
    .local v0, PcPrefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v0}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1213
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1214
    .local v4, pkgName:Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/huawei/android/pushagent/utils/CommFun;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1215
    invoke-virtual {v0, v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->removeKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1218
    .end local v0           #PcPrefs:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1219
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "PushLog2510"

    const-string v6, "removeNotExistPackage failed!"

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static removeUnVisulChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "srcStr"

    .prologue
    .line 954
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 955
    const-string v7, ""

    .line 972
    :goto_0
    return-object v7

    .line 957
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 960
    .local v5, ret:Ljava/lang/StringBuffer;
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 961
    .local v6, srcByte:[B
    move-object v0, v6

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-byte v1, v0, v3

    .line 963
    .local v1, b:B
    const/16 v7, 0x21

    if-lt v1, v7, :cond_1

    const/16 v7, 0x7e

    if-gt v1, v7, :cond_1

    .line 964
    int-to-char v7, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 968
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #srcByte:[B
    :catch_0
    move-exception v2

    .line 969
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 972
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static resetFileAndMemory(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "deleteType"

    .prologue
    .line 1133
    packed-switch p1, :pswitch_data_0

    .line 1158
    :goto_0
    return-void

    .line 1135
    :pswitch_0
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->deleteSameFiles(Landroid/content/Context;)V

    .line 1136
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->removeNotExistPackage(Landroid/content/Context;)V

    .line 1137
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->init()V

    .line 1138
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->deleteNoSysCfg()V

    .line 1139
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->setNeedQueryTRS(Landroid/content/Context;)V

    goto :goto_0

    .line 1142
    :pswitch_1
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->clearMemory(Landroid/content/Context;)V

    .line 1143
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->deleteSameFiles(Landroid/content/Context;)V

    .line 1144
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->deleteClientFiles(Landroid/content/Context;)V

    .line 1145
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->init()V

    .line 1146
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->deleteNoSysCfg()V

    .line 1147
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->setNeedQueryTRS(Landroid/content/Context;)V

    goto :goto_0

    .line 1150
    :pswitch_2
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->deleteSameFiles(Landroid/content/Context;)V

    .line 1151
    invoke-static {p0}, Lcom/huawei/android/pushagent/utils/CommFun;->deleteClientFiles(Landroid/content/Context;)V

    .line 1152
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->init()V

    .line 1153
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->deleteNoSysCfg()V

    goto :goto_0

    .line 1133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static shortToByteArray(I)[B
    .locals 3
    .parameter "i"

    .prologue
    .line 176
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 177
    .local v0, result:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 178
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 180
    return-object v0
.end method

.method public static toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .parameter "jsonString"

    .prologue
    const/4 v1, 0x0

    .line 1238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1239
    const-string v2, "PushLog2510"

    const-string v3, "jsonString is null"

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    :goto_0
    return-object v1

    .line 1243
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "PushLog2510"

    const-string v3, "cast jsonString to jsonArray error"

    invoke-static {v2, v3, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "jsonString"

    .prologue
    const/4 v1, 0x0

    .line 1224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1225
    const-string v2, "PushLog2510"

    const-string v3, "jsonString is null"

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :goto_0
    return-object v1

    .line 1229
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "PushLog2510"

    const-string v3, "cast jsonString to jsonObject error"

    invoke-static {v2, v3, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static wakeSystem(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "timeMsc"

    .prologue
    .line 835
    const-string v2, "PushLog2510"

    const-string v3, "enter wakeSystem"

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 837
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "dispatcher"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 838
    .local v1, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 839
    return-void
.end method

.method private static writeInfoToDataOrSDcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 770
    const/4 v4, 0x0

    .line 772
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushagent/utils/CommFun;->getSDPath()Ljava/lang/String;

    move-result-object v7

    .line 774
    .local v7, sdCardPath:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v11, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v9, v10, v11}, Lcom/huawei/android/pushagent/utils/CommFun;->getTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, info:Ljava/lang/String;
    if-nez v7, :cond_3

    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 782
    .local v6, path:Ljava/lang/String;
    :goto_0
    sget v8, Lcom/huawei/android/pushagent/utils/CommFun;->mStoreFileIndex:I

    sget-object v9, Lcom/huawei/android/pushagent/utils/CommFun;->storeLogFiles:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 783
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/huawei/android/pushagent/utils/CommFun;->storeLogFiles:[Ljava/lang/String;

    sget v10, Lcom/huawei/android/pushagent/utils/CommFun;->mStoreFileIndex:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 784
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 785
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    array-length v10, v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    const-wide/32 v10, 0x200000

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 786
    sget v8, Lcom/huawei/android/pushagent/utils/CommFun;->mStoreFileIndex:I

    sget-object v9, Lcom/huawei/android/pushagent/utils/CommFun;->storeLogFiles:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_4

    .line 787
    sget v8, Lcom/huawei/android/pushagent/utils/CommFun;->mStoreFileIndex:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/huawei/android/pushagent/utils/CommFun;->mStoreFileIndex:I

    .line 792
    :goto_1
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/huawei/android/pushagent/utils/CommFun;->storeLogFiles:[Ljava/lang/String;

    sget v10, Lcom/huawei/android/pushagent/utils/CommFun;->mStoreFileIndex:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 793
    .local v3, newFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 794
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_0

    .line 795
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete the file["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] failed! can not write to the file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .end local v1           #file:Ljava/io/File;
    .end local v3           #newFile:Ljava/io/File;
    :cond_0
    :goto_2
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/huawei/android/pushagent/utils/CommFun;->storeLogFiles:[Ljava/lang/String;

    sget v10, Lcom/huawei/android/pushagent/utils/CommFun;->mStoreFileIndex:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v5, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 804
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    .line 813
    if-eqz v5, :cond_1

    .line 814
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    move-object v4, v5

    .line 822
    .end local v2           #info:Ljava/lang/String;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #sdCardPath:Ljava/lang/String;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :cond_2
    :goto_3
    return-void

    .line 779
    .restart local v2       #info:Ljava/lang/String;
    .restart local v7       #sdCardPath:Ljava/lang/String;
    :cond_3
    move-object v6, v7

    .restart local v6       #path:Ljava/lang/String;
    goto/16 :goto_0

    .line 789
    .restart local v1       #file:Ljava/io/File;
    :cond_4
    const/4 v8, 0x0

    :try_start_3
    sput v8, Lcom/huawei/android/pushagent/utils/CommFun;->mStoreFileIndex:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_1

    .line 805
    .end local v1           #file:Ljava/io/File;
    .end local v2           #info:Ljava/lang/String;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #sdCardPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 806
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_4
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 813
    if-eqz v4, :cond_2

    .line 814
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_3

    .line 816
    :catch_1
    move-exception v0

    .line 817
    .local v0, e:Ljava/io/IOException;
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finally IOException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 801
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #info:Ljava/lang/String;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #sdCardPath:Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string v8, "PushLog2510"

    const-string v9, "the index of file is wrong, please check it"

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_2

    .line 807
    .end local v2           #info:Ljava/lang/String;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #sdCardPath:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 808
    .restart local v0       #e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 813
    if-eqz v4, :cond_2

    .line 814
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_3

    .line 816
    :catch_3
    move-exception v0

    .line 817
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finally IOException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 816
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v2       #info:Ljava/lang/String;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #sdCardPath:Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 817
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finally IOException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 820
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 818
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .line 819
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finally Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 821
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 818
    .end local v2           #info:Ljava/lang/String;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #sdCardPath:Ljava/lang/String;
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v0

    .line 819
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finally Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 818
    .local v0, e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 819
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finally Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 809
    .end local v0           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 810
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_6
    :try_start_9
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 813
    if-eqz v4, :cond_2

    .line 814
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_3

    .line 816
    :catch_9
    move-exception v0

    .line 817
    .local v0, e:Ljava/io/IOException;
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finally IOException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 818
    .local v0, e:Ljava/lang/Exception;
    :catch_a
    move-exception v0

    .line 819
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finally Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 812
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 813
    :goto_7
    if-eqz v4, :cond_6

    .line 814
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 820
    :cond_6
    :goto_8
    throw v8

    .line 816
    :catch_b
    move-exception v0

    .line 817
    .local v0, e:Ljava/io/IOException;
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "finally IOException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 818
    .end local v0           #e:Ljava/io/IOException;
    :catch_c
    move-exception v0

    .line 819
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "finally Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 812
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v2       #info:Ljava/lang/String;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #sdCardPath:Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 809
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 807
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 805
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_f
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method
