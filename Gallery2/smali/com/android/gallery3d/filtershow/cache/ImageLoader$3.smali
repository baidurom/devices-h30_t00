.class Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;
.super Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/cache/ImageLoader;->saveImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field final synthetic val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iput-object p6, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;)V

    return-void
.end method


# virtual methods
.method public showDialog()V
    .locals 3

    .prologue
    const v2, 0x7f0d035c

    .line 472
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3$2;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3$1;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 488
    return-void
.end method
