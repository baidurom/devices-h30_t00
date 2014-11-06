.class public Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.super Ljava/lang/Object;
.source "SDKObject.java"


# static fields
.field public static final DEBUG:Ljava/lang/String; = "3"

.field public static final ERROR:Ljava/lang/String; = "6"

.field public static final INFO:Ljava/lang/String; = "4"

.field private static final STRING:Ljava/lang/String; = ""

.field public static final WARN:Ljava/lang/String; = "5"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeData(Ljava/io/FileOutputStream;Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "fileOut"
    .parameter "printWriter"

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 274
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 289
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :cond_1
    :goto_1
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, e2:Ljava/lang/Exception;
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 281
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 292
    .end local v0           #e2:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 294
    .local v1, e3:Ljava/lang/Exception;
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_1

    .line 296
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getTagInfo()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 58
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 62
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 65
    .local v1, stacks:[Ljava/lang/StackTraceElement;
    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 66
    const-string v3, ";line:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .end local v0           #sb:Ljava/lang/StringBuffer;
    .end local v1           #stacks:[Ljava/lang/StackTraceElement;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .parameter "tag"
    .parameter "log"
    .parameter "err"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 134
    .local v1, er:Ljava/lang/Error;
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/StackTraceElement;

    .line 135
    .local v3, stack:[Ljava/lang/StackTraceElement;
    instance-of v5, p2, Ljava/lang/Exception;

    if-eqz v5, :cond_1

    move-object v0, p2

    .line 137
    check-cast v0, Ljava/lang/Exception;

    .line 138
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v5, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 144
    :cond_1
    instance-of v5, p2, Ljava/lang/Error;

    if-eqz v5, :cond_3

    move-object v1, p2

    .line 146
    check-cast v1, Ljava/lang/Error;

    .line 147
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v5, :cond_2

    .line 149
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 151
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Error;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 153
    :cond_3
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-nez v5, :cond_5

    .line 181
    :cond_4
    return-void

    .line 158
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "______________"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "______________"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->writeLog(Ljava/lang/String;)V

    .line 162
    if-eqz v3, :cond_4

    array-length v5, v3

    if-eqz v5, :cond_4

    .line 167
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_4

    .line 169
    aget-object v4, v3, v2

    .line 171
    .local v4, stackTraceElement:Ljava/lang/StackTraceElement;
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v5, :cond_4

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 176
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 179
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 178
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->writeLog(Ljava/lang/String;)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "logType"
    .parameter "log"

    .prologue
    .line 88
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->writeLog(Ljava/lang/String;)V

    .line 95
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 107
    :cond_3
    const-string v0, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected static writeLog(Ljava/lang/String;)V
    .locals 13
    .parameter "logString"

    .prologue
    .line 191
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 192
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 193
    sget-boolean v10, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_FILE_LOG_OPEN:Z

    if-nez v10, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    const-string v11, "/photoshare_log.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 209
    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v2, fileName:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 215
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 217
    .local v5, flag:Z
    if-eqz v5, :cond_0

    .line 233
    .end local v5           #flag:Z
    :cond_2
    const/4 v3, 0x0

    .line 234
    .local v3, fileOut:Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 237
    .local v6, printWriter:Ljava/io/PrintWriter;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v4, v2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 239
    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .local v4, fileOut:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v7, Ljava/io/PrintWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    const-string v11, "UTF-8"

    invoke-direct {v10, v4, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v7, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 240
    .end local v6           #printWriter:Ljava/io/PrintWriter;
    .local v7, printWriter:Ljava/io/PrintWriter;
    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 241
    .local v0, date:Ljava/util/Date;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 242
    .local v8, sf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, time:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    .line 264
    invoke-static {v4, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->closeData(Ljava/io/FileOutputStream;Ljava/io/PrintWriter;)V

    move-object v6, v7

    .end local v7           #printWriter:Ljava/io/PrintWriter;
    .restart local v6       #printWriter:Ljava/io/PrintWriter;
    move-object v3, v4

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 222
    .end local v0           #date:Ljava/util/Date;
    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .end local v6           #printWriter:Ljava/io/PrintWriter;
    .end local v8           #sf:Ljava/text/SimpleDateFormat;
    .end local v9           #time:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/io/IOException;
    sget-boolean v10, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v10, :cond_3

    .line 226
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    :cond_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 246
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    .restart local v6       #printWriter:Ljava/io/PrintWriter;
    :catch_1
    move-exception v1

    .line 249
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    sget-boolean v10, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v10, :cond_4

    .line 251
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    :cond_4
    invoke-static {v3, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->closeData(Ljava/io/FileOutputStream;Ljava/io/PrintWriter;)V

    goto/16 :goto_0

    .line 254
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 257
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_5
    sget-boolean v10, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v10, :cond_5

    .line 259
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 264
    :cond_5
    invoke-static {v3, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->closeData(Ljava/io/FileOutputStream;Ljava/io/PrintWriter;)V

    goto/16 :goto_0

    .line 263
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v10

    .line 264
    :goto_3
    invoke-static {v3, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->closeData(Ljava/io/FileOutputStream;Ljava/io/PrintWriter;)V

    .line 265
    throw v10

    .line 263
    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .end local v6           #printWriter:Ljava/io/PrintWriter;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    .restart local v7       #printWriter:Ljava/io/PrintWriter;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7           #printWriter:Ljava/io/PrintWriter;
    .restart local v6       #printWriter:Ljava/io/PrintWriter;
    move-object v3, v4

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 254
    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .end local v6           #printWriter:Ljava/io/PrintWriter;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    .restart local v7       #printWriter:Ljava/io/PrintWriter;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7           #printWriter:Ljava/io/PrintWriter;
    .restart local v6       #printWriter:Ljava/io/PrintWriter;
    move-object v3, v4

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 246
    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    .end local v6           #printWriter:Ljava/io/PrintWriter;
    .restart local v4       #fileOut:Ljava/io/FileOutputStream;
    .restart local v7       #printWriter:Ljava/io/PrintWriter;
    :catch_6
    move-exception v1

    move-object v6, v7

    .end local v7           #printWriter:Ljava/io/PrintWriter;
    .restart local v6       #printWriter:Ljava/io/PrintWriter;
    move-object v3, v4

    .end local v4           #fileOut:Ljava/io/FileOutputStream;
    .restart local v3       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
