.class Lcom/android/server/AlarmManagerService$DMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 2065
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2066
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2067
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2068
    const-string v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2069
    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2070
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2074
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2076
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2077
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService;->enableDm(Z)I

    .line 2081
    :cond_0
    :goto_0
    return-void

    .line 2078
    :cond_1
    const-string v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2079
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService;->enableDm(Z)I

    goto :goto_0
.end method
