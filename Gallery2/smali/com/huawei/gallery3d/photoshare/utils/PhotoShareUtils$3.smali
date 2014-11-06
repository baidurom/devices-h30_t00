.class final Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$3;
.super Ljava/lang/Thread;
.source "PhotoShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->addPhotoToShared(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shareFolderPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$3;->val$shareFolderPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 594
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v1, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 596
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 598
    .local v0, list:[Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils$3;->val$shareFolderPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->addPhotoToShared(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->clearShareItemList()V

    .line 601
    .end local v0           #list:[Ljava/lang/String;
    :cond_0
    return-void
.end method
