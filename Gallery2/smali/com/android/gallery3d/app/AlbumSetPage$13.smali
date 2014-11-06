.class Lcom/android/gallery3d/app/AlbumSetPage$13;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$AlbumSetNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
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
    .line 1542
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShowedEmptyToastForSelf:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$5200(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->hideCameraButton()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$5300(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mHiddenReload:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4400(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1552
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->initHiddenSet()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4500(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mPrivateReload:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4600(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1556
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->initPrivateSet()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$4700(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1560
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SelectAllView;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1565
    :cond_3
    :goto_0
    return-void

    .line 1563
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SelectAllView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectAllView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSelectAllView:Lcom/android/gallery3d/ui/SelectAllView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SelectAllView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectAllView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1564
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mToolbarView:Lcom/android/gallery3d/ui/ToolbarView;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ToolbarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ToolbarView;->updateTitleCount(I)V

    goto :goto_0
.end method
