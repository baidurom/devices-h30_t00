.class Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$1;
.super Ljava/lang/Object;
.source "MorphoPanorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;


# direct methods
.method constructor <init>(Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;)V
    .locals 0
    .parameter

    .prologue
    .line 2225
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$1;->this$1:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2228
    :goto_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$1;->this$1:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;

    iget-object v0, v0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->this$0:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    #getter for: Lcom/morpho/app/panorama_gp/MorphoPanorama;->mJpegProgress:[I
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->access$2100(Lcom/morpho/app/panorama_gp/MorphoPanorama;)[I

    move-result-object v0

    aget v0, v0, v2

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$1;->this$1:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;

    new-array v1, v2, [Ljava/lang/Integer;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->access$2300(Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;[Ljava/lang/Object;)V

    .line 2231
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2232
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2235
    :cond_0
    return-void
.end method
