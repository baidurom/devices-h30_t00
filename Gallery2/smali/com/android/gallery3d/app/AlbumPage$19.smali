.class Lcom/android/gallery3d/app/AlbumPage$19;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$19;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked()V
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$19;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onPhotoShareItemClicked()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$4800(Lcom/android/gallery3d/app/AlbumPage;)V

    .line 1744
    return-void
.end method
