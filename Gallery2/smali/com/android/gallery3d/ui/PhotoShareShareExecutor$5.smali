.class Lcom/android/gallery3d/ui/PhotoShareShareExecutor$5;
.super Ljava/lang/Object;
.source "PhotoShareShareExecutor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->sortDestinationList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$5;->this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/NameCompareUtils;->compareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    check-cast p1, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .end local p1
    check-cast p2, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$5;->compare(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I

    move-result v0

    return v0
.end method
