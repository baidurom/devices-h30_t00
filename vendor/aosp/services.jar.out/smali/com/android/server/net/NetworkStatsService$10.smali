.class Lcom/android/server/net/NetworkStatsService$10;
.super Ljava/lang/Thread;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #getter for: Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$1700(Lcom/android/server/net/NetworkStatsService;)Landroid/util/TrustedTime;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 1023
    return-void
.end method
