.class public Lcom/huawei/permission/CameraPermission;
.super Ljava/lang/Object;
.source "CameraPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraPermission"


# instance fields
.field public isCameraBlocked:Z

.field private mContext:Landroid/content/Context;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/permission/CameraPermission;->isCameraBlocked:Z

    .line 23
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/permission/CameraPermission;->mUid:I

    .line 25
    const-string v0, "CameraPermission"

    const-string v1, "CameraPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/permission/CameraPermission;->isCameraBlocked:Z

    .line 29
    iput-object p1, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/permission/CameraPermission;->mUid:I

    .line 31
    const-string v0, "CameraPermission"

    const-string v1, "CameraPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method


# virtual methods
.method public remind()V
    .locals 5

    .prologue
    const/16 v4, 0x400

    .line 35
    iget-object v1, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 36
    iget-object v1, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/huawei/permission/CameraPermission;->mUid:I

    invoke-static {v1, v2}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    :cond_2
    iget v1, p0, Lcom/huawei/permission/CameraPermission;->mUid:I

    const/4 v2, 0x0

    invoke-static {v4, v1, v2}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    .line 53
    .local v0, selectionResult:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/permission/CameraPermission;->isCameraBlocked:Z

    goto :goto_0

    .line 44
    .end local v0           #selectionResult:I
    :cond_3
    iget-object v1, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/huawei/permission/CameraPermission;->mUid:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/huawei/permission/StubController;->checkSystemAppInternal(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method
