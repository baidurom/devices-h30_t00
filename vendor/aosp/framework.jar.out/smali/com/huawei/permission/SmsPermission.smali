.class public Lcom/huawei/permission/SmsPermission;
.super Ljava/lang/Object;
.source "SmsPermission.java"


# static fields
.field private static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmsPermission"

.field private static isControl:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string/jumbo v0, "ro.config.hw_wirenetcontrol"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/permission/SmsPermission;->isControl:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private sendFakeIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "PI"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 120
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendFakeIntents(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v0, 0x0

    .line 112
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 113
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-direct {p0, v1}, Lcom/huawei/permission/SmsPermission;->sendFakeIntent(Landroid/app/PendingIntent;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public isMmsBlocked()Z
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    .line 24
    sget-boolean v3, Lcom/huawei/permission/SmsPermission;->isControl:Z

    if-nez v3, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v2

    .line 28
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 29
    .local v1, uid:I
    iget-object v3, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    iget-object v3, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    const/4 v3, 0x0

    invoke-static {v4, v1, v3}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    .line 40
    .local v0, selectionResult:I
    if-nez v0, :cond_2

    .line 41
    const-string v3, "SmsPermission"

    const-string v4, "Get selection error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    .line 46
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSmsBlocked(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 5
    .parameter "destAddr"
    .parameter "smsBody"
    .parameter "sentIntent"

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 56
    .local v1, uid:I
    iget-object v3, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v2

    .line 60
    :cond_1
    iget-object v3, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-static {v4, v1, p1}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    .line 68
    .local v0, selectionResult:I
    if-nez v0, :cond_2

    .line 69
    const-string v3, "SmsPermission"

    const-string v4, "Get selection error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    .line 74
    invoke-direct {p0, p3}, Lcom/huawei/permission/SmsPermission;->sendFakeIntent(Landroid/app/PendingIntent;)V

    .line 75
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSmsBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .parameter "destAddr"
    .parameter "smsBody"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/16 v4, 0x20

    const/4 v2, 0x0

    .line 83
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 84
    .local v1, uid:I
    iget-object v3, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const/4 v3, 0x0

    invoke-static {v4, v1, v3}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    .line 96
    .local v0, selectionResult:I
    if-nez v0, :cond_2

    .line 97
    const-string v3, "SmsPermission"

    const-string v4, "Get selection error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    .line 102
    invoke-direct {p0, p3}, Lcom/huawei/permission/SmsPermission;->sendFakeIntents(Ljava/util/List;)V

    .line 103
    const/4 v2, 0x1

    goto :goto_0
.end method
