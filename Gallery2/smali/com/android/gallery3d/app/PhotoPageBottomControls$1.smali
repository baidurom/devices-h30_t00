.class Lcom/android/gallery3d/app/PhotoPageBottomControls$1;
.super Ljava/lang/Object;
.source "PhotoPageBottomControls.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPageBottomControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPageBottomControls;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPageBottomControls;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls$1;->this$0:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls$1;->this$0:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    #getter for: Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->access$000(Lcom/android/gallery3d/app/PhotoPageBottomControls;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls$1;->this$0:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    #getter for: Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->access$000(Lcom/android/gallery3d/app/PhotoPageBottomControls;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPageBottomControls$1;->this$0:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    #getter for: Lcom/android/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->access$100(Lcom/android/gallery3d/app/PhotoPageBottomControls;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    return-void
.end method
