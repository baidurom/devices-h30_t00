.class Lcom/android/gallery3d/app/LongTapManager$Operation$2;
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


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/LongTapManager$Operation;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$2;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$2;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    iget-object v0, v0, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/LongTapManager;->access$500(Lcom/android/gallery3d/app/LongTapManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$2;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    iget-object v1, v1, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    #getter for: Lcom/android/gallery3d/app/LongTapManager;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/app/LongTapManager;->access$600(Lcom/android/gallery3d/app/LongTapManager;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/app/LongTapManager$Operation$2;->this$1:Lcom/android/gallery3d/app/LongTapManager$Operation;

    iget-object v0, v0, Lcom/android/gallery3d/app/LongTapManager$Operation;->this$0:Lcom/android/gallery3d/app/LongTapManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/LongTapManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/LongTapManager;->access$502(Lcom/android/gallery3d/app/LongTapManager;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 365
    return-void
.end method
