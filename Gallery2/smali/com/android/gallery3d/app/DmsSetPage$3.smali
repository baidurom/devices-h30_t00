.class Lcom/android/gallery3d/app/DmsSetPage$3;
.super Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.source "DmsSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/DmsSetPage;->initializeViews()V
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
    .line 295
    iput-object p1, p0, Lcom/android/gallery3d/app/DmsSetPage$3;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage$3;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #calls: Lcom/android/gallery3d/app/DmsSetPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/DmsSetPage;->access$1000(Lcom/android/gallery3d/app/DmsSetPage;I)V

    .line 299
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage$3;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/DmsSetPage;->onLongTap(I)V

    .line 314
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage$3;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/DmsSetPage;->onSingleTapUp(I)V

    .line 309
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .parameter "followedByLongPress"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage$3;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #calls: Lcom/android/gallery3d/app/DmsSetPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/DmsSetPage;->access$1100(Lcom/android/gallery3d/app/DmsSetPage;Z)V

    .line 304
    return-void
.end method
