.class Lcom/android/gallery3d/app/LongTapManager$Operation$1;
.super Ljava/lang/Object;
.source "LongTapManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/LongTapManager$Operation;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/LongTapManager$Operation;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$1;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    iput-boolean p2, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$1;->val$result:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 339
    iget-object v2, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$1;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    iget-object v2, v2, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/gallery3d/app/LongTapManager;->access$500(Lcom/android/gallery3d/app/LongTapManager;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$1;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    iget-object v3, v3, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/android/gallery3d/app/LongTapManager;->access$600(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 340
    iget-object v2, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$1;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    iget-object v2, v2, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    const/4 v3, 0x0

    #setter for: Lcom/android/gallery3d/app/LongTapManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/LongTapManager;->access$502(Lcom/android/gallery3d/app/LongTapManager;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 343
    iget-boolean v2, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$1;->val$result:Z

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$1;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    iget-object v2, v2, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/android/gallery3d/app/LongTapManager;->access$600(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const v3, 0x7f0d0424

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$1;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    iget-object v6, v6, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/android/gallery3d/app/LongTapManager;->access$600(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    const v7, 0x7f0d03f7

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, message:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$1;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    iget-object v2, v2, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/android/gallery3d/app/LongTapManager;->access$600(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->getThemeContext(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    .line 349
    .local v1, themeContext:Landroid/view/ContextThemeWrapper;
    invoke-static {v1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 350
    return-void

    .line 346
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #themeContext:Landroid/view/ContextThemeWrapper;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$1;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    iget-object v2, v2, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/android/gallery3d/app/LongTapManager;->access$600(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const v3, 0x7f0d0425

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0
.end method
