.class public Lcom/morpho/utils/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# static fields
.field private static isDebuggable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/morpho/utils/DebugLog;->isDebuggable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 54
    sget-boolean v0, Lcom/morpho/utils/DebugLog;->isDebuggable:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 67
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static getDebuggable()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/morpho/utils/DebugLog;->isDebuggable:Z

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 72
    sget-boolean v0, Lcom/morpho/utils/DebugLog;->isDebuggable:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method

.method public static setDebuggable(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 30
    .local v2, manager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 33
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 41
    const/4 v3, 0x1

    sput-boolean v3, Lcom/morpho/utils/DebugLog;->isDebuggable:Z

    .line 46
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DebugLog"

    const-string v4, "Fail to Context#getPackageNam()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    sput-boolean v5, Lcom/morpho/utils/DebugLog;->isDebuggable:Z

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 78
    sget-boolean v0, Lcom/morpho/utils/DebugLog;->isDebuggable:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 60
    sget-boolean v0, Lcom/morpho/utils/DebugLog;->isDebuggable:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method
