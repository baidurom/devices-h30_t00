.class Lcom/android/gallery3d/filtershow/cache/ImageLoader$3$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3$2;->this$1:Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 478
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 479
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3$2;->this$1:Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    #getter for: Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->access$100(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->finish()V

    .line 480
    return-void
.end method
