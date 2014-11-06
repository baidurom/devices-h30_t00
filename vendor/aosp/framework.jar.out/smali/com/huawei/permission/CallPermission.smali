.class public Lcom/huawei/permission/CallPermission;
.super Ljava/lang/Object;
.source "CallPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallPermission"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/huawei/permission/CallPermission;->mContext:Landroid/content/Context;

    .line 14
    const-string v0, "CallPermission"

    const-string v1, "CallPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method


# virtual methods
.method public isCallBlocked(Landroid/content/Intent;I)Z
    .locals 7
    .parameter "intent"
    .parameter "uid"

    .prologue
    const/16 v6, 0x40

    const/4 v4, 0x0

    .line 18
    iget-object v5, p0, Lcom/huawei/permission/CallPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v4

    .line 22
    :cond_1
    iget-object v5, p0, Lcom/huawei/permission/CallPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, uriStr:Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 29
    .local v1, start:I
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, tel:Ljava/lang/String;
    invoke-static {v6, p2, v2}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    .line 33
    .local v0, selectionResult:I
    if-nez v0, :cond_2

    .line 34
    const-string v5, "CallPermission"

    const-string v6, "CallPermission holdForGetPermissionSelection error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    :cond_2
    const/4 v5, 0x2

    if-ne v5, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method
