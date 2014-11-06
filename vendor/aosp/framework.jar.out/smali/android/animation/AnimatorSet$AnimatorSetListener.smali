.class Landroid/animation/AnimatorSet$AnimatorSetListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorSetListener"
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V
    .locals 0
    .parameter
    .parameter "animatorSet"

    .prologue
    .line 723
    iput-object p1, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput-object p2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 725
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 728
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-boolean v2, v2, Landroid/animation/AnimatorSet;->mTerminated:Z

    if-nez v2, :cond_0

    .line 731
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #getter for: Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/animation/AnimatorSet;->access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 732
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-object v2, v2, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 733
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-object v2, v2, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 734
    .local v1, numListeners:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 735
    iget-object v2, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-object v2, v2, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    iget-object v3, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    .end local v0           #i:I
    .end local v1           #numListeners:I
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10
    .parameter "animation"

    .prologue
    .line 747
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 749
    iget-object v8, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #getter for: Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/animation/AnimatorSet;->access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 750
    iget-object v8, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    #getter for: Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/animation/AnimatorSet;->access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 752
    :cond_0
    iget-object v8, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #getter for: Landroid/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v8}, Landroid/animation/AnimatorSet;->access$100(Landroid/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 753
    .local v1, animNode:Landroid/animation/AnimatorSet$Node;
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/animation/AnimatorSet$Node;->done:Z

    .line 754
    iget-object v8, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-boolean v8, v8, Landroid/animation/AnimatorSet;->mTerminated:Z

    if-nez v8, :cond_4

    .line 757
    iget-object v8, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #getter for: Landroid/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;
    invoke-static {v8}, Landroid/animation/AnimatorSet;->access$200(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v6

    .line 758
    .local v6, sortedNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    const/4 v0, 0x1

    .line 759
    .local v0, allDone:Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 760
    .local v5, numSortedNodes:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 761
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    iget-boolean v8, v8, Landroid/animation/AnimatorSet$Node;->done:Z

    if-nez v8, :cond_2

    .line 762
    const/4 v0, 0x0

    .line 766
    :cond_1
    if-eqz v0, :cond_4

    .line 769
    iget-object v8, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-object v8, v8, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    .line 770
    iget-object v8, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->this$0:Landroid/animation/AnimatorSet;

    iget-object v8, v8, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 772
    .local v7, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 773
    .local v4, numListeners:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    .line 774
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator$AnimatorListener;

    iget-object v9, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-interface {v8, v9}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 773
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 760
    .end local v4           #numListeners:I
    .end local v7           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 777
    :cond_3
    iget-object v8, p0, Landroid/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v9, 0x0

    #setter for: Landroid/animation/AnimatorSet;->mStarted:Z
    invoke-static {v8, v9}, Landroid/animation/AnimatorSet;->access$302(Landroid/animation/AnimatorSet;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .end local v0           #allDone:Z
    .end local v1           #animNode:Landroid/animation/AnimatorSet$Node;
    .end local v3           #i:I
    .end local v5           #numSortedNodes:I
    .end local v6           #sortedNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/AnimatorSet$Node;>;"
    :cond_4
    :goto_2
    return-void

    .line 780
    :catch_0
    move-exception v2

    .line 781
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "AnimatorSetListener"

    const-string v9, "Failed to onAnimationEnd"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 788
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 792
    return-void
.end method
