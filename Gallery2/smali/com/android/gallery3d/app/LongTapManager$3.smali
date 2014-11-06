.class Lcom/android/gallery3d/app/LongTapManager$3;
.super Ljava/lang/Object;
.source "LongTapManager.java"

# interfaces
.implements Lcom/huawei/gallery3d/photoshare/ui/PhotoShareAlertDialogFragment$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/LongTapManager;->doAfterItemClicked(ILcom/android/gallery3d/data/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/LongTapManager;

.field final synthetic val$action:I

.field final synthetic val$path:Lcom/android/gallery3d/data/Path;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/LongTapManager;ILcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/gallery3d/app/LongTapManager$3;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    iput p2, p0, Lcom/android/gallery3d/app/LongTapManager$3;->val$action:I

    iput-object p3, p0, Lcom/android/gallery3d/app/LongTapManager$3;->val$path:Lcom/android/gallery3d/data/Path;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveClick()V
    .locals 5

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager$3;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/LongTapManager$3;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/LongTapManager$3;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/android/gallery3d/app/LongTapManager;->access$600(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/app/LongTapManager$3;->val$action:I

    const/4 v4, 0x1

    #calls: Lcom/android/gallery3d/app/LongTapManager;->createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/app/LongTapManager;->access$700(Lcom/android/gallery3d/app/LongTapManager;Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/app/LongTapManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/LongTapManager;->access$502(Lcom/android/gallery3d/app/LongTapManager;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager$3;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/LongTapManager;->access$500(Lcom/android/gallery3d/app/LongTapManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager$3;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    iget v1, p0, Lcom/android/gallery3d/app/LongTapManager$3;->val$action:I

    iget-object v2, p0, Lcom/android/gallery3d/app/LongTapManager$3;->val$path:Lcom/android/gallery3d/data/Path;

    #calls: Lcom/android/gallery3d/app/LongTapManager;->execute(ILcom/android/gallery3d/data/Path;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/LongTapManager;->access$800(Lcom/android/gallery3d/app/LongTapManager;ILcom/android/gallery3d/data/Path;)V

    .line 149
    return-void
.end method
