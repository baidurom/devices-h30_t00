.class public Lcom/huawei/permission/WirelessAndNetworkPermission;
.super Ljava/lang/Object;
.source "WirelessAndNetworkPermission.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final PERMISSION_BLUETOOTH:I = 0x3ea

.field public static final PERMISSION_MMS:I = 0x2000

.field public static final PERMISSION_MOBILEDATE:I = 0x3e9

.field public static final PERMISSION_WIFI:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "WirelessAndNetworkPermission"

.field public static final isControl:Z


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

    sput-boolean v0, Lcom/huawei/permission/WirelessAndNetworkPermission;->isControl:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/huawei/permission/WirelessAndNetworkPermission;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public isBlocked()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    sget-boolean v3, Lcom/huawei/permission/WirelessAndNetworkPermission;->isControl:Z

    if-nez v3, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v5, v3, v1}, Lcom/huawei/permission/StubController;->checkSystemAppInternal(Landroid/content/Context;IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    const/16 v3, 0x2000

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v3, v4, v5}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    .line 74
    .local v0, remindResult:I
    if-eqz v0, :cond_0

    .line 77
    if-eq v2, v0, :cond_0

    .line 80
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    move v1, v2

    .line 82
    goto :goto_0
.end method

.method public isBlocked(II)Z
    .locals 4
    .parameter "type"
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    sget-boolean v3, Lcom/huawei/permission/WirelessAndNetworkPermission;->isControl:Z

    if-nez v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    iget-object v3, p0, Lcom/huawei/permission/WirelessAndNetworkPermission;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const/4 v3, 0x0

    invoke-static {p1, p2, v3}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    .line 50
    .local v0, remindResult:I
    if-eqz v0, :cond_0

    .line 53
    if-eq v2, v0, :cond_0

    .line 56
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    move v1, v2

    .line 58
    goto :goto_0
.end method
