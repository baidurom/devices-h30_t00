.class Lcom/android/internal/util/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/android/internal/util/State;

.field private mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

.field private mInitialState:Lcom/android/internal/util/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/android/internal/util/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/util/State;",
            "Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 654
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V
    .locals 2
    .parameter "looper"
    .parameter "sm"

    .prologue
    const/4 v1, 0x0

    .line 1125
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    .line 660
    new-instance v0, Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-direct {v0, v1}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>(Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    .line 669
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 678
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    .line 681
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 1126
    iput-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    .line 1128
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1129
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1130
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 648
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->quitNow()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->isDbg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/util/StateMachine$SmHandler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setDbg(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 648
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 6
    .parameter "state"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 1088
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    .line 1089
    const-string v3, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: E state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",parent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_3

    const-string v2, ""

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_0
    const/4 v0, 0x0

    .line 1093
    .local v0, parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-eqz p2, :cond_1

    .line 1094
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1095
    .restart local v0       #parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-nez v0, :cond_1

    .line 1097
    invoke-direct {p0, p2, v5}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    .line 1100
    :cond_1
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1101
    .local v1, stateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-nez v1, :cond_2

    .line 1102
    new-instance v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .end local v1           #stateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-direct {v1, p0, v5}, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    .line 1103
    .restart local v1       #stateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    :cond_2
    iget-object v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eq v2, v0, :cond_4

    .line 1109
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "state already added"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1089
    .end local v0           #parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v1           #stateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1111
    .restart local v0       #parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .restart local v1       #stateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_4
    iput-object p1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 1112
    iput-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1113
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1114
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_5

    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: X stateInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_5
    return-object v1
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 841
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #getter for: Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine;->access$400(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 844
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #setter for: Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->access$402(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #setter for: Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->access$502(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;

    .line 848
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    .line 849
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 850
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->cleanup()V

    .line 851
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 852
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 853
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 854
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    .line 855
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 856
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 857
    return-void
.end method

.method private final declared-synchronized completeConstruction()V
    .locals 8

    .prologue
    .line 866
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_0

    const-string v5, "StateMachine"

    const-string v6, "completeConstruction: E"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    const/4 v3, 0x0

    .line 873
    .local v3, maxDepth:I
    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 874
    .local v4, si:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    const/4 v0, 0x0

    .line 875
    .local v0, depth:I
    move-object v1, v4

    .local v1, i:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :goto_1
    if-eqz v1, :cond_2

    .line 876
    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 878
    :cond_2
    if-ge v3, v0, :cond_1

    .line 879
    move v3, v0

    goto :goto_0

    .line 882
    .end local v0           #depth:I
    .end local v1           #i:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v4           #si:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_4

    const-string v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "completeConstruction: maxDepth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_4
    new-array v5, v3, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 885
    new-array v5, v3, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 886
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->setupInitialStateStack()V

    .line 889
    const/4 v5, -0x2

    sget-object v6, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 891
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_5

    const-string v5, "StateMachine"

    const-string v6, "completeConstruction: X"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    :cond_5
    monitor-exit p0

    return-void

    .line 866
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #maxDepth:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1146
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deferMessage: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1150
    .local v0, newMsg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1152
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lcom/android/internal/util/IState;
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4
    .parameter "stateStackEnteringIndex"

    .prologue
    .line 959
    move v0, p1

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-gt v0, v1, :cond_1

    .line 960
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v1}, Lcom/android/internal/util/State;->enter()V

    .line 962
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 964
    :cond_1
    return-void
.end method

.method private final invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V
    .locals 4
    .parameter "commonStateInfo"

    .prologue
    .line 945
    :goto_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_1

    .line 947
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 948
    .local v0, curState:Lcom/android/internal/util/State;
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/State;->exit()V

    .line 950
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 951
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    goto :goto_0

    .line 953
    .end local v0           #curState:Lcom/android/internal/util/State;
    :cond_1
    return-void
.end method

.method private final isDbg()Z
    .locals 1

    .prologue
    .line 1174
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 1169
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .prologue
    .line 976
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 977
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 978
    .local v0, curMsg:Landroid/os/Message;
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 976
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 981
    .end local v0           #curMsg:Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 982
    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 7

    .prologue
    .line 992
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v2, v3, 0x1

    .line 993
    .local v2, startingIndex:I
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v0, v3, -0x1

    .line 994
    .local v0, i:I
    move v1, v2

    .line 995
    .local v1, j:I
    :goto_0
    if-ltz v0, :cond_1

    .line 996
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    const-string v3, "StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_0
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 998
    add-int/lit8 v1, v1, 0x1

    .line 999
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1002
    :cond_1
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1003
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_2

    .line 1004
    const-string v3, "StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",startingIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v6, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v5}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_2
    return v2
.end method

.method private performTransitions()V
    .locals 5

    .prologue
    .line 784
    const/4 v1, 0x0

    .line 785
    .local v1, destState:Lcom/android/internal/util/State;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    if-eqz v3, :cond_1

    .line 786
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    const-string v3, "StateMachine"

    const-string v4, "handleMessage: new destination call exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 793
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 800
    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    .line 801
    .local v0, commonStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V

    .line 802
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result v2

    .line 803
    .local v2, stateStackEnteringIndex:I
    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 812
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    goto :goto_0

    .line 819
    .end local v0           #commonStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v2           #stateStackEnteringIndex:I
    :cond_1
    if-eqz v1, :cond_2

    .line 820
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    if-ne v1, v3, :cond_3

    .line 824
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine;->onQuitting()V

    .line 825
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->cleanupAfterQuitting()V

    .line 835
    :cond_2
    :goto_1
    return-void

    .line 826
    :cond_3
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    if-ne v1, v3, :cond_2

    .line 832
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine;->onHalting()V

    goto :goto_1
.end method

.method private final processMsg(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 900
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v2, v3

    .line 901
    .local v0, curStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    .line 902
    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v4}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 906
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 938
    :cond_1
    :goto_0
    return-void

    .line 920
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_3

    .line 921
    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v4}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_3
    iget-object v2, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/State;->processMessage(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 912
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 913
    if-nez v0, :cond_2

    .line 917
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    .line 928
    :cond_4
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 929
    if-eqz v0, :cond_5

    .line 930
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v2, v2, v3

    iget-object v1, v2, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 931
    .local v1, orgState:Lcom/android/internal/util/State;
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v3, p1}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 934
    .end local v1           #orgState:Lcom/android/internal/util/State;
    :cond_5
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v3, p1}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v5, v5}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method private final quit()V
    .locals 2

    .prologue
    .line 1157
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    const-string/jumbo v1, "quit:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1159
    return-void
.end method

.method private final quitNow()V
    .locals 2

    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    const-string v1, "abort:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1165
    return-void
.end method

.method private final setDbg(Z)V
    .locals 0
    .parameter "dbg"

    .prologue
    .line 1179
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    .line 1180
    return-void
.end method

.method private final setInitialState(Lcom/android/internal/util/State;)V
    .locals 3
    .parameter "initialState"

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_0
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    .line 1136
    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 4

    .prologue
    .line 1047
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    .line 1048
    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1053
    .local v0, curStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    :goto_0
    if-eqz v0, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1055
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1053
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    goto :goto_0

    .line 1059
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1061
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    .line 1062
    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 4
    .parameter "destState"

    .prologue
    .line 1029
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 1030
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1032
    .local v0, curStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1033
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1034
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    .line 1036
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    .line 1037
    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_2
    return-object v0
.end method

.method private final transitionTo(Lcom/android/internal/util/IState;)V
    .locals 3
    .parameter "destState"

    .prologue
    .line 1140
    check-cast p1, Lcom/android/internal/util/State;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 1141
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionTo: destState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    invoke-virtual {v2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: E msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 758
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-eqz v0, :cond_2

    .line 760
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)V

    .line 770
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->performTransitions()V

    .line 772
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    const-string v0, "StateMachine"

    const-string v1, "handleMessage: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_1
    return-void

    .line 761
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    .line 765
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    goto :goto_0

    .line 767
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
