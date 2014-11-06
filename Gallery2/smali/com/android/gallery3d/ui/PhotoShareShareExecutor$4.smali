.class Lcom/android/gallery3d/ui/PhotoShareShareExecutor$4;
.super Ljava/lang/Object;
.source "PhotoShareShareExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->onShareDestinationSelect(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

.field final synthetic val$shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$4;->this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    iput-object p2, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$4;->val$shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$4;->this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    #getter for: Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->access$600(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$4;->val$shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->addPhotoToShared(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    return-void
.end method
