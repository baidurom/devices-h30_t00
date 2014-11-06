.class Lcom/android/gallery3d/app/AlbumSetEmptyBackground$2;
.super Ljava/lang/Object;
.source "AlbumSetEmptyBackground.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetEmptyBackground;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetEmptyBackground;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground$2;->this$0:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetEmptyBackground$2;->this$0:Lcom/android/gallery3d/app/AlbumSetEmptyBackground;

    #getter for: Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetEmptyBackground;->access$000(Lcom/android/gallery3d/app/AlbumSetEmptyBackground;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    .line 51
    return-void
.end method
