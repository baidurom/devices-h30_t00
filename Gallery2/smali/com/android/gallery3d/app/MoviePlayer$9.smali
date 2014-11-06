.class Lcom/android/gallery3d/app/MoviePlayer$9;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->showErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$9;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    .line 701
    return-void
.end method
