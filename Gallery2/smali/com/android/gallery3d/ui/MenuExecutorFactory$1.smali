.class final Lcom/android/gallery3d/ui/MenuExecutorFactory$1;
.super Ljava/lang/Object;
.source "MenuExecutorFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutorFactory;->createPasteProgressDialog(Lcom/android/gallery3d/app/AbstractGalleryActivity;ILcom/android/gallery3d/ui/MenuExecutor;Landroid/os/Bundle;)Landroid/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field final synthetic val$executor:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutorFactory$1;->val$activity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/android/gallery3d/ui/MenuExecutorFactory$1;->val$executor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutorFactory$1;->val$activity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 62
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutorFactory$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/ui/MenuExecutorFactory$1$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutorFactory$1;Lcom/android/gallery3d/data/DataManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method
