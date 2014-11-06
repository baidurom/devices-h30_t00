.class Lcom/android/gallery3d/app/AlbumSetPage$1;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;


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
    .line 237
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivacyModeChange(Z)V
    .locals 2
    .parameter "isPrivacyMode"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSetPrivateItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSetPrivateItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 242
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mClickedItemId:I
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$100(Lcom/android/gallery3d/app/AlbumSetPage;)I

    move-result v0

    const v1, 0x7f100242

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mLongTapManager:Lcom/android/gallery3d/app/LongTapManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/LongTapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/LongTapManager;->dismissDialog()V

    .line 249
    return-void
.end method
