.class Lcom/android/gallery3d/ui/PhotoShareShareExecutor$2;
.super Ljava/lang/Object;
.source "PhotoShareShareExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoShareShareExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$2;->this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$2;->this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mIsExcuting:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->access$202(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Z)Z

    .line 80
    invoke-static {}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->clearShareItemList()V

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoShareShareExecutor$2;->this$0:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->mSelectTargetDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->access$302(Lcom/android/gallery3d/ui/PhotoShareShareExecutor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 82
    return-void
.end method
