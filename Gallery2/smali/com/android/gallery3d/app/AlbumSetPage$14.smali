.class Lcom/android/gallery3d/app/AlbumSetPage$14;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->onOperatedDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$14;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1577
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$14;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$5500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/MenuExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$14;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemId:I
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$100(Lcom/android/gallery3d/app/AlbumSetPage;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$14;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemTitle:I
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$5400(Lcom/android/gallery3d/app/AlbumSetPage;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$14;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1600(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 1581
    return-void
.end method
