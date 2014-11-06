.class Lcom/android/gallery3d/app/DmsSetPage$4;
.super Ljava/lang/Object;
.source "DmsSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/DmsSetPage;->showDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/DmsSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/DmsSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/gallery3d/app/DmsSetPage$4;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage$4;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #calls: Lcom/android/gallery3d/app/DmsSetPage;->hideDetails()V
    invoke-static {v0}, Lcom/android/gallery3d/app/DmsSetPage;->access$1200(Lcom/android/gallery3d/app/DmsSetPage;)V

    .line 396
    return-void
.end method
