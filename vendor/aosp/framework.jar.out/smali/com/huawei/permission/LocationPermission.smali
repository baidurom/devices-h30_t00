.class public Lcom/huawei/permission/LocationPermission;
.super Ljava/lang/Object;
.source "LocationPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationPermission"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/huawei/permission/LocationPermission;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public isLocationBlocked()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 19
    .local v1, uid:I
    iget-object v3, p0, Lcom/huawei/permission/LocationPermission;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v2

    .line 24
    :cond_1
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    .line 25
    .local v0, selectionResult:I
    if-eqz v0, :cond_0

    .line 29
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
