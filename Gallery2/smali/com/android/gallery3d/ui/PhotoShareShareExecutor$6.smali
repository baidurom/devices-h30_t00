.class Lcom/android/gallery3d/ui/PhotoShareShareExecutor$6;
.super Ljava/lang/Object;
.source "PhotoShareShareExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->showDestinationList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$6;->this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    iput-object p2, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$6;->val$list:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$6;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 213
    .local v0, selectFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$6;->this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    #calls: Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->onShareDestinationSelect(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->access$700(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V

    .line 214
    return-void
.end method
