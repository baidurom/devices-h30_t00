.class Lcom/android/gallery3d/ui/PasteExecutor$6;
.super Ljava/lang/Object;
.source "PasteExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PasteExecutor;->showDestinationList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PasteExecutor;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PasteExecutor;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/gallery3d/ui/PasteExecutor$6;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    iput-object p2, p0, Lcom/android/gallery3d/ui/PasteExecutor$6;->val$list:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/gallery3d/ui/PasteExecutor$6;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 274
    .local v0, selectSet:Lcom/android/gallery3d/data/MediaSet;
    iget-object v1, p0, Lcom/android/gallery3d/ui/PasteExecutor$6;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getBucketPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/gallery3d/ui/PasteExecutor;->onPasteDestinationSelect(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/ui/PasteExecutor;->access$700(Lcom/android/gallery3d/ui/PasteExecutor;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method
