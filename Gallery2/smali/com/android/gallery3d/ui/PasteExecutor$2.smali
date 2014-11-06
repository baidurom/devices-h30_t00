.class Lcom/android/gallery3d/ui/PasteExecutor$2;
.super Ljava/lang/Object;
.source "PasteExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PasteExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PasteExecutor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PasteExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/ui/PasteExecutor$2;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 82
    packed-switch p2, :pswitch_data_0

    .line 89
    const/4 v0, 0x1

    #calls: Lcom/android/gallery3d/ui/PasteExecutor;->setDialogDismissable(Landroid/content/DialogInterface;Z)Z
    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/PasteExecutor;->access$300(Landroid/content/DialogInterface;Z)Z

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor$2;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    #calls: Lcom/android/gallery3d/ui/PasteExecutor;->pasteCancelled()V
    invoke-static {v0}, Lcom/android/gallery3d/ui/PasteExecutor;->access$100(Lcom/android/gallery3d/ui/PasteExecutor;)V

    .line 93
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor$2;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    #calls: Lcom/android/gallery3d/ui/PasteExecutor;->onCreateAlbumConfirm(Landroid/content/DialogInterface;)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/PasteExecutor;->access$200(Lcom/android/gallery3d/ui/PasteExecutor;Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
