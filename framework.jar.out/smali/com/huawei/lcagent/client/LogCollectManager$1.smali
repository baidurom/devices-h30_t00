.class Lcom/huawei/lcagent/client/LogCollectManager$1;
.super Ljava/lang/Object;
.source "LogCollectManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/lcagent/client/LogCollectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/lcagent/client/LogCollectManager;


# direct methods
.method constructor <init>(Lcom/huawei/lcagent/client/LogCollectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/huawei/lcagent/client/LogCollectManager$1;->this$0:Lcom/huawei/lcagent/client/LogCollectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 284
    const-string v0, "LogCollectManager"

    const-string/jumbo v1, "service is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager$1;->this$0:Lcom/huawei/lcagent/client/LogCollectManager;

    invoke-static {p2}, Lcom/huawei/lcagent/client/ILogCollect$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/lcagent/client/ILogCollect;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    .line 286
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 290
    const-string v0, "LogCollectManager"

    const-string/jumbo v1, "service is disconnceted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager$1;->this$0:Lcom/huawei/lcagent/client/LogCollectManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    .line 292
    return-void
.end method
