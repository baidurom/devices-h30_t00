.class Lcom/android/gallery3d/util/WaterMarkMaker$2;
.super Ljava/lang/Object;
.source "WaterMarkMaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/util/WaterMarkMaker;->showWaitingDialog(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/util/WaterMarkMaker;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/gallery3d/util/WaterMarkMaker$2;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    iput-object p2, p0, Lcom/android/gallery3d/util/WaterMarkMaker$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker$2;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/gallery3d/util/WaterMarkMaker$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/gallery3d/util/WaterMarkMaker;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/gallery3d/util/WaterMarkMaker;->access$202(Lcom/android/gallery3d/util/WaterMarkMaker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 376
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker$2;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    #getter for: Lcom/android/gallery3d/util/WaterMarkMaker;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/util/WaterMarkMaker;->access$200(Lcom/android/gallery3d/util/WaterMarkMaker;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker$2;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    #getter for: Lcom/android/gallery3d/util/WaterMarkMaker;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/util/WaterMarkMaker;->access$200(Lcom/android/gallery3d/util/WaterMarkMaker;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker$2;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    #getter for: Lcom/android/gallery3d/util/WaterMarkMaker;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/util/WaterMarkMaker;->access$200(Lcom/android/gallery3d/util/WaterMarkMaker;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/WaterMarkMaker$2;->val$context:Landroid/content/Context;

    const v2, 0x7f0d038b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker$2;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    #getter for: Lcom/android/gallery3d/util/WaterMarkMaker;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/util/WaterMarkMaker;->access$200(Lcom/android/gallery3d/util/WaterMarkMaker;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 380
    return-void
.end method
