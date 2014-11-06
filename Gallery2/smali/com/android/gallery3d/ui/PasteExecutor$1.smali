.class Lcom/android/gallery3d/ui/PasteExecutor$1;
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
    .line 60
    iput-object p1, p0, Lcom/android/gallery3d/ui/PasteExecutor$1;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 63
    packed-switch p2, :pswitch_data_0

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor$1;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    #calls: Lcom/android/gallery3d/ui/PasteExecutor;->pasteCancelled()V
    invoke-static {v0}, Lcom/android/gallery3d/ui/PasteExecutor;->access$100(Lcom/android/gallery3d/ui/PasteExecutor;)V

    .line 73
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PasteExecutor$1;->this$0:Lcom/android/gallery3d/ui/PasteExecutor;

    #calls: Lcom/android/gallery3d/ui/PasteExecutor;->createNewAlbum()V
    invoke-static {v0}, Lcom/android/gallery3d/ui/PasteExecutor;->access$000(Lcom/android/gallery3d/ui/PasteExecutor;)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
