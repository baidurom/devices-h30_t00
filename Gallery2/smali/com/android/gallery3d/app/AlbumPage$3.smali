.class Lcom/android/gallery3d/app/AlbumPage$3;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LongTapManager$OnItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
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
    .line 570
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClicked(II)Z
    .locals 1
    .parameter "resId"
    .parameter "slotIndex"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$3;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->ActOnItemClicked(II)Z
    invoke-static {v0, p1, p2}, Lcom/android/gallery3d/app/AlbumPage;->access$1500(Lcom/android/gallery3d/app/AlbumPage;II)Z

    move-result v0

    return v0
.end method
