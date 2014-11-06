.class Lcom/android/gallery3d/app/AlbumSetPage$8;
.super Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->initializeViews()V
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
    .line 903
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3600(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 907
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onLongTap(I)V

    .line 922
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onSingleTapUp(I)V

    .line 917
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .parameter "followedByLongPress"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3700(Lcom/android/gallery3d/app/AlbumSetPage;Z)V

    .line 912
    return-void
.end method
