.class Lcom/android/gallery3d/util/WaterMarkMaker$3;
.super Ljava/lang/Object;
.source "WaterMarkMaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/util/WaterMarkMaker;->dismissWaitingDialog(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/util/WaterMarkMaker;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/util/WaterMarkMaker;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/gallery3d/util/WaterMarkMaker$3;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker$3;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    #getter for: Lcom/android/gallery3d/util/WaterMarkMaker;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/util/WaterMarkMaker;->access$200(Lcom/android/gallery3d/util/WaterMarkMaker;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 388
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker$3;->this$0:Lcom/android/gallery3d/util/WaterMarkMaker;

    #setter for: Lcom/android/gallery3d/util/WaterMarkMaker;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/gallery3d/util/WaterMarkMaker;->access$202(Lcom/android/gallery3d/util/WaterMarkMaker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 389
    return-void
.end method
