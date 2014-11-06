.class Lcom/android/gallery3d/ui/MenuExecutorFactory$1$1;
.super Ljava/lang/Object;
.source "MenuExecutorFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutorFactory$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutorFactory$1;

.field final synthetic val$manager:Lcom/android/gallery3d/data/DataManager;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutorFactory$1;Lcom/android/gallery3d/data/DataManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutorFactory$1$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutorFactory$1;

    iput-object p2, p0, Lcom/android/gallery3d/ui/MenuExecutorFactory$1$1;->val$manager:Lcom/android/gallery3d/data/DataManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutorFactory$1$1;->val$manager:Lcom/android/gallery3d/data/DataManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutorFactory$1$1;->this$0:Lcom/android/gallery3d/ui/MenuExecutorFactory$1;

    iget-object v2, v2, Lcom/android/gallery3d/ui/MenuExecutorFactory$1;->val$executor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/DataManager;->onPasteCanceled(Landroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    .line 66
    return-void
.end method
