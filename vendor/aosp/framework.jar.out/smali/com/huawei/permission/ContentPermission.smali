.class public Lcom/huawei/permission/ContentPermission;
.super Ljava/lang/Object;
.source "ContentPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StubController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPermissionType:I

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/huawei/permission/ContentPermission;->mContext:Landroid/content/Context;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mUid:I

    .line 23
    return-void
.end method


# virtual methods
.method public getContentType(Landroid/net/Uri;I)I
    .locals 6
    .parameter "uri"
    .parameter "action"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 27
    iget-object v1, p0, Lcom/huawei/permission/ContentPermission;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/huawei/permission/ContentPermission;->mUid:I

    invoke-static {v1, v2}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return v0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 33
    :cond_1
    if-ne p2, v3, :cond_3

    .line 34
    iput v3, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    .line 73
    :cond_2
    :goto_1
    iget v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_0

    .line 35
    :cond_3
    if-ne p2, v4, :cond_4

    .line 36
    const/16 v0, 0x4000

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 37
    :cond_4
    if-ne p2, v5, :cond_5

    .line 38
    const/high16 v0, 0x2

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 40
    :cond_5
    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 42
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "call_log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 43
    if-ne p2, v3, :cond_7

    .line 44
    iput v4, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 45
    :cond_7
    if-ne p2, v4, :cond_8

    .line 46
    const v0, 0x8000

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 47
    :cond_8
    if-ne p2, v5, :cond_9

    .line 48
    const/high16 v0, 0x4

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 50
    :cond_9
    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 52
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mms-sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 55
    :cond_b
    if-ne p2, v3, :cond_c

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 61
    :cond_c
    if-ne p2, v5, :cond_d

    .line 62
    const/high16 v0, 0x8

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 64
    :cond_d
    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 66
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const-string v0, "StubController"

    const-string v1, "calendar access!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/16 v0, 0x800

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto/16 :goto_1
.end method

.method public isGlobalSwitchOn(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public remind()I
    .locals 3

    .prologue
    .line 83
    iget v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    iget v1, p0, Lcom/huawei/permission/ContentPermission;->mUid:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    return v0
.end method
