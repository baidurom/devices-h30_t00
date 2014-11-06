.class Lcom/android/gallery3d/ui/SlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field private mTimeOutHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlotView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/SlotView;)V
    .locals 1
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    .line 996
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener$1;-><init>(Lcom/android/gallery3d/ui/SlotView$MyGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->mTimeOutHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/SlotView;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/SlotView$MyGestureListener;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    return-void
.end method

.method private declared-synchronized cancelDown(Z)V
    .locals 3
    .parameter "byLongPress"

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    const-string v1, "cancelDown"

    #calls: Lcom/android/gallery3d/ui/SlotView;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->access$1200(Lcom/android/gallery3d/ui/SlotView;Ljava/lang/String;)V

    .line 888
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelTimeOut()V

    .line 892
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mClickAnimation:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1500(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #calls: Lcom/android/gallery3d/ui/SlotView;->needReverseClickDownAnimation()Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1600(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIsOnScroll:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1700(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIndexDown:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$1300(Lcom/android/gallery3d/ui/SlotView;)I

    move-result v1

    const/4 v2, 0x1

    #calls: Lcom/android/gallery3d/ui/SlotView;->startDownAnimation(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView;->access$1800(Lcom/android/gallery3d/ui/SlotView;IZ)V

    .line 898
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 902
    :goto_0
    monitor-exit p0

    return-void

    .line 899
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->setDownFlag(Z)V

    .line 901
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Listener;->onUp(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->mTimeOutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 994
    return-void
.end method

.method private declared-synchronized isDown()Z
    .locals 1

    .prologue
    .line 983
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setDownFlag(Z)V
    .locals 1
    .parameter "down"

    .prologue
    .line 979
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    monitor-exit p0

    return-void

    .line 979
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->mTimeOutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    sget v2, Lcom/android/gallery3d/ui/SlotView;->DOWN_TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 990
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 906
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    const-string v1, "onDown"

    #calls: Lcom/android/gallery3d/ui/SlotView;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->access$1200(Lcom/android/gallery3d/ui/SlotView;Ljava/lang/String;)V

    .line 908
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelTimeOut()V

    .line 910
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, -0x1

    #setter for: Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->access$1902(Lcom/android/gallery3d/ui/SlotView;I)I

    .line 912
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$2000(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v1

    #setter for: Lcom/android/gallery3d/ui/SlotView;->mIndexDown:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->access$1302(Lcom/android/gallery3d/ui/SlotView;I)I

    .line 913
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mClickAnimation:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1500(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIndexDown:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$1300(Lcom/android/gallery3d/ui/SlotView;)I

    move-result v1

    #calls: Lcom/android/gallery3d/ui/SlotView;->startDownAnimation(IZ)V
    invoke-static {v0, v1, v4}, Lcom/android/gallery3d/ui/SlotView;->access$1800(Lcom/android/gallery3d/ui/SlotView;IZ)V

    .line 917
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->startTimeOut()V

    .line 919
    return v4
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 925
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    const-string v4, "onFling"

    #calls: Lcom/android/gallery3d/ui/SlotView;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/SlotView;->access$1200(Lcom/android/gallery3d/ui/SlotView;Ljava/lang/String;)V

    .line 926
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 927
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$2000(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 928
    .local v0, scrollLimit:I
    if-nez v0, :cond_0

    .line 933
    :goto_0
    return v2

    .line 929
    :cond_0
    move v1, p4

    .line 930
    .local v1, velocity:F
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;
    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView;->access$2100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;

    move-result-object v3

    neg-float v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->fling(III)V

    .line 931
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$2200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$2200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    .line 932
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 933
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 965
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    const-string v2, "onLongPress"

    #calls: Lcom/android/gallery3d/ui/SlotView;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/SlotView;->access$1200(Lcom/android/gallery3d/ui/SlotView;Ljava/lang/String;)V

    .line 966
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 967
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$2500(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    :goto_0
    return-void

    .line 968
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->lockRendering()V

    .line 970
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$2000(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    .line 971
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$1400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onLongTap(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView;->unlockRendering()V

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->unlockRendering()V

    throw v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 939
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    const-string v3, "onScroll"

    #calls: Lcom/android/gallery3d/ui/SlotView;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/SlotView;->access$1200(Lcom/android/gallery3d/ui/SlotView;Ljava/lang/String;)V

    .line 940
    invoke-direct {p0, v5}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 941
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #setter for: Lcom/android/gallery3d/ui/SlotView;->mIsOnScroll:Z
    invoke-static {v2, v6}, Lcom/android/gallery3d/ui/SlotView;->access$1702(Lcom/android/gallery3d/ui/SlotView;Z)Z

    .line 942
    move v0, p4

    .line 943
    .local v0, distance:F
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$2100(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v4}, Lcom/android/gallery3d/ui/SlotView;->access$2000(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    move-result v1

    .line 945
    .local v1, overDistance:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$2300(Lcom/android/gallery3d/ui/SlotView;)I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 946
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$2400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/Paper;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/Paper;->overScroll(F)V

    .line 948
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 949
    return v6
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 866
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    const-string v3, "onShowPress"

    #calls: Lcom/android/gallery3d/ui/SlotView;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/SlotView;->access$1200(Lcom/android/gallery3d/ui/SlotView;Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SlotView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 868
    .local v1, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 871
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->isDown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 883
    :goto_0
    return-void

    .line 874
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIndexDown:I
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1300(Lcom/android/gallery3d/ui/SlotView;)I

    move-result v0

    .line 875
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 876
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->setDownFlag(Z)V

    .line 877
    iget-object v2, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/SlotView;->access$1400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 881
    :cond_1
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 954
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    const-string v1, "onSingleTapUp"

    #calls: Lcom/android/gallery3d/ui/SlotView;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->access$1200(Lcom/android/gallery3d/ui/SlotView;Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$2000(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v1

    #setter for: Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->access$1902(Lcom/android/gallery3d/ui/SlotView;I)I

    .line 957
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    .line 958
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$2500(Lcom/android/gallery3d/ui/SlotView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v4

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1900(Lcom/android/gallery3d/ui/SlotView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/ui/SlotView;->access$1400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mIndexUp:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$1900(Lcom/android/gallery3d/ui/SlotView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    goto :goto_0
.end method
