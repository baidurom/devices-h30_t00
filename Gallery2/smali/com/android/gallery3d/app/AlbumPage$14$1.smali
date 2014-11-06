.class Lcom/android/gallery3d/app/AlbumPage$14$1;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/AlbumPage$14;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage$14;)V
    .locals 0
    .parameter

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$14$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$14;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$14$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$14;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$14;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 1471
    return-void
.end method
