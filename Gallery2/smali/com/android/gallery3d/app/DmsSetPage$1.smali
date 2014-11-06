.class Lcom/android/gallery3d/app/DmsSetPage$1;
.super Lcom/android/gallery3d/ui/GLView;
.source "DmsSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/DmsSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/android/gallery3d/app/DmsSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/DmsSetPage;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 110
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 115
    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #getter for: Lcom/android/gallery3d/app/DmsSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;
    invoke-static {v3}, Lcom/android/gallery3d/app/DmsSetPage;->access$000(Lcom/android/gallery3d/app/DmsSetPage;)Lcom/android/gallery3d/app/EyePosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/EyePosition;->resetPosition()V

    .line 117
    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #getter for: Lcom/android/gallery3d/app/DmsSetPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v3}, Lcom/android/gallery3d/app/DmsSetPage;->access$100(Lcom/android/gallery3d/app/DmsSetPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #getter for: Lcom/android/gallery3d/app/DmsSetPage;->mConfig:Lcom/android/gallery3d/app/Config$DmsSetPage;
    invoke-static {v4}, Lcom/android/gallery3d/app/DmsSetPage;->access$200(Lcom/android/gallery3d/app/DmsSetPage;)Lcom/android/gallery3d/app/Config$DmsSetPage;

    move-result-object v4

    iget v4, v4, Lcom/android/gallery3d/app/Config$AlbumSetPage;->paddingTop:I

    add-int v2, v3, v4

    .line 118
    .local v2, slotViewTop:I
    sub-int v3, p5, p3

    iget-object v4, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #getter for: Lcom/android/gallery3d/app/DmsSetPage;->mConfig:Lcom/android/gallery3d/app/Config$DmsSetPage;
    invoke-static {v4}, Lcom/android/gallery3d/app/DmsSetPage;->access$200(Lcom/android/gallery3d/app/DmsSetPage;)Lcom/android/gallery3d/app/Config$DmsSetPage;

    move-result-object v4

    iget v4, v4, Lcom/android/gallery3d/app/Config$AlbumSetPage;->paddingBottom:I

    sub-int v0, v3, v4

    .line 119
    .local v0, slotViewBottom:I
    sub-int v1, p4, p2

    .line 121
    .local v1, slotViewRight:I
    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #getter for: Lcom/android/gallery3d/app/DmsSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v3}, Lcom/android/gallery3d/app/DmsSetPage;->access$300(Lcom/android/gallery3d/app/DmsSetPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/android/gallery3d/ui/SlotView;->layout(IIII)V

    .line 122
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 126
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->mMatrix:[F

    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmsSetPage$1;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #getter for: Lcom/android/gallery3d/app/DmsSetPage;->mX:F
    invoke-static {v2}, Lcom/android/gallery3d/app/DmsSetPage;->access$400(Lcom/android/gallery3d/app/DmsSetPage;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmsSetPage$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #getter for: Lcom/android/gallery3d/app/DmsSetPage;->mY:F
    invoke-static {v3}, Lcom/android/gallery3d/app/DmsSetPage;->access$500(Lcom/android/gallery3d/app/DmsSetPage;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->this$0:Lcom/android/gallery3d/app/DmsSetPage;

    #getter for: Lcom/android/gallery3d/app/DmsSetPage;->mZ:F
    invoke-static {v3}, Lcom/android/gallery3d/app/DmsSetPage;->access$600(Lcom/android/gallery3d/app/DmsSetPage;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/app/DmsSetPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 130
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 131
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 132
    return-void
.end method
