.class Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$ViewRootImplEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatchHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;


# direct methods
.method private constructor <init>(Landroid/view/ViewRootImpl$ViewRootImplEx;)V
    .locals 0
    .parameter

    .prologue
    .line 6497
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$ViewRootImplEx;Landroid/view/ViewRootImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6497
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;-><init>(Landroid/view/ViewRootImpl$ViewRootImplEx;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 6500
    const/16 v8, 0x1e

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_7

    .line 6501
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    .line 6502
    .local v2, event:Landroid/view/MotionEvent;
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_8

    move v0, v3

    .line 6503
    .local v0, callWhenDone:Z
    :goto_0
    if-eqz v2, :cond_0

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v8, v8, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v8, :cond_0

    .line 6504
    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v8, v8, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v8, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 6510
    :cond_0
    :try_start_0
    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v8, v8, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v8, v8, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v8, v8, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v8, :cond_5

    if-eqz v2, :cond_5

    .line 6512
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_9

    .line 6513
    .local v3, isDown:Z
    :goto_1
    if-eqz v3, :cond_1

    .line 6514
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v7, v7, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 6519
    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v7, v7, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget v7, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v7, :cond_2

    .line 6520
    const/4 v7, 0x0

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v8, v8, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget v8, v8, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6526
    :cond_2
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 6527
    .local v6, winFrame:Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6530
    :try_start_1
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v7, v7, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v8, v8, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v7, v8, v6}, Landroid/view/IWindowSession;->getWindowFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6536
    :goto_2
    :try_start_2
    iget v7, v6, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_3

    iget v7, v6, Landroid/graphics/Rect;->top:I

    if-eqz v7, :cond_4

    .line 6541
    :cond_3
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float v4, v7, v8

    .line 6542
    .local v4, newX:F
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float v5, v7, v8

    .line 6543
    .local v5, newY:F
    invoke-virtual {v2, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 6548
    .end local v4           #newX:F
    .end local v5           #newY:F
    :cond_4
    iget-object v7, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v7, v7, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6555
    .end local v3           #isDown:Z
    .end local v6           #winFrame:Landroid/graphics/Rect;
    :cond_5
    if-eqz v2, :cond_6

    .line 6556
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 6558
    :cond_6
    invoke-static {}, Landroid/view/ViewRootImpl;->access$3000()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "ViewRootImpl"

    const-string v8, "Done dispatching!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6561
    .end local v0           #callWhenDone:Z
    .end local v2           #event:Landroid/view/MotionEvent;
    :cond_7
    return-void

    .restart local v2       #event:Landroid/view/MotionEvent;
    :cond_8
    move v0, v7

    .line 6502
    goto/16 :goto_0

    .restart local v0       #callWhenDone:Z
    :cond_9
    move v3, v7

    .line 6512
    goto :goto_1

    .line 6531
    .restart local v3       #isDown:Z
    .restart local v6       #winFrame:Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 6533
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "ViewRootImpl"

    const-string v8, "Get window position failed."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 6555
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #isDown:Z
    .end local v6           #winFrame:Landroid/graphics/Rect;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_a

    .line 6556
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 6558
    :cond_a
    invoke-static {}, Landroid/view/ViewRootImpl;->access$3000()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "ViewRootImpl"

    const-string v9, "Done dispatching!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6555
    :cond_b
    throw v7
.end method
