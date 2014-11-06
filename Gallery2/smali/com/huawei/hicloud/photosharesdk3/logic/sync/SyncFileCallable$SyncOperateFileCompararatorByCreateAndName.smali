.class Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncOperateFileCompararatorByCreateAndName;
.super Ljava/lang/Object;
.source "SyncFileCallable.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncOperateFileCompararatorByCreateAndName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x65b84b73f3f532b9L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1094
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncOperateFileCompararatorByCreateAndName;)V
    .locals 0
    .parameter

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncOperateFileCompararatorByCreateAndName;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)I
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1105
    move-object v0, p1

    .line 1106
    .local v0, left:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    move-object v1, p2

    .line 1107
    .local v1, right:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1109
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1111
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    check-cast p2, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncOperateFileCompararatorByCreateAndName;->compare(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)I

    move-result v0

    return v0
.end method
