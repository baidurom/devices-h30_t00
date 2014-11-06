.class Lcom/morpho/app/panorama_gp/PanoramaTimer$1;
.super Ljava/util/TimerTask;
.source "PanoramaTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/morpho/app/panorama_gp/PanoramaTimer;->start(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/morpho/app/panorama_gp/PanoramaTimer;


# direct methods
.method constructor <init>(Lcom/morpho/app/panorama_gp/PanoramaTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer$1;->this$0:Lcom/morpho/app/panorama_gp/PanoramaTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer$1;->this$0:Lcom/morpho/app/panorama_gp/PanoramaTimer;

    #getter for: Lcom/morpho/app/panorama_gp/PanoramaTimer;->mListner:Lcom/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/PanoramaTimer;->access$000(Lcom/morpho/app/panorama_gp/PanoramaTimer;)Lcom/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;->onTimeout()V

    .line 39
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer$1;->this$0:Lcom/morpho/app/panorama_gp/PanoramaTimer;

    #calls: Lcom/morpho/app/panorama_gp/PanoramaTimer;->taskCancel()V
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/PanoramaTimer;->access$100(Lcom/morpho/app/panorama_gp/PanoramaTimer;)V

    .line 40
    return-void
.end method
