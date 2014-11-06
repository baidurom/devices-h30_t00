.class Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;
.super Ljava/lang/Object;
.source "AlbumSlotRenderer.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataModelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 250
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mUpdateFocus:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->access$200(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mFocusIndex:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->access$300(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mFocusIndex:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->access$300(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->resetFocusIndex()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    #getter for: Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 267
    return-void
.end method
