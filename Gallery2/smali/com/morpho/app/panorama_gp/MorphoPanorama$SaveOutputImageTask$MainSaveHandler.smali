.class Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$MainSaveHandler;
.super Landroid/os/Handler;
.source "MorphoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainSaveHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;


# direct methods
.method private constructor <init>(Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;)V
    .locals 0
    .parameter

    .prologue
    .line 2172
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$MainSaveHandler;->this$1:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;Lcom/morpho/app/panorama_gp/MorphoPanorama$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2172
    invoke-direct {p0, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$MainSaveHandler;-><init>(Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2175
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2182
    :goto_0
    return-void

    .line 2177
    :pswitch_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask$MainSaveHandler;->this$1:Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;

    #calls: Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->resumeUIAfterSave()V
    invoke-static {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;->access$1800(Lcom/morpho/app/panorama_gp/MorphoPanorama$SaveOutputImageTask;)V

    goto :goto_0

    .line 2175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
