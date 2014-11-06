.class Lcom/android/gallery3d/app/AlbumSetPage$16;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;


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
    .line 1807
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$16;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked()V
    .locals 1

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$16;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->onPhotoShareItemClicked()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$5600(Lcom/android/gallery3d/app/AlbumSetPage;)V

    .line 1812
    return-void
.end method
