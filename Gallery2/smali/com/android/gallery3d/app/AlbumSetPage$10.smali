.class Lcom/android/gallery3d/app/AlbumSetPage$10;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ActionSetOnOff$SetChangLinstener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->onItemSelected(Landroid/view/MenuItem;)Z
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
    .line 1213
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$10;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$10;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/Gallery;->SETTIGNS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->notifyChange(Landroid/net/Uri;)V

    .line 1218
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$10;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->reload(Z)V

    .line 1219
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$10;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->resume()V

    .line 1220
    return-void
.end method
