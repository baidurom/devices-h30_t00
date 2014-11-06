.class public final Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# static fields
.field public static final DEBUG:I = 0x3

.field private static final DLNA_TAG:Ljava/lang/String; = "DLNA_SDK_"

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static isPrintLog:Z

.field private static logLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    .line 42
    const/4 v0, 0x2

    sput v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 127
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA_SDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 146
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA_SDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 252
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    sget v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA_SDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 271
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    sget v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA_SDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 163
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sget v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA_SDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 182
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sget v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA_SDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isPrintLog()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    return v0
.end method

.method public static setLogLevel(I)V
    .locals 0
    .parameter "logLevel"

    .prologue
    .line 78
    sput p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    .line 79
    return-void
.end method

.method public static setPrintLog(Z)V
    .locals 0
    .parameter "isPrintLog"

    .prologue
    .line 60
    sput-boolean p0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    .line 61
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 91
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sget v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA_SDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 110
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sget v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA_SDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 199
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    sget v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA_SDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 235
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    sget v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA_SDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter "tag"
    .parameter "tr"

    .prologue
    .line 216
    sget-boolean v0, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->isPrintLog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    sget v1, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->logLevel:I

    if-lt v0, v1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA_SDK_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
