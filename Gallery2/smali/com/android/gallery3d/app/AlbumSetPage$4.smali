.class Lcom/android/gallery3d/app/AlbumSetPage$4;
.super Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;
.source "AlbumSetPage.java"


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
    .line 344
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$4;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;-><init>()V

    return-void
.end method


# virtual methods
.method public updateSharingAroundItem(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$4;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSharingAroundItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$4;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSharingAroundItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
