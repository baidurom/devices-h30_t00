.class Lcom/android/gallery3d/app/MoviePlayer$10;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V
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
    .line 713
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$10;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$10;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    .line 717
    return-void
.end method