.class Lcom/huawei/gallery3d/voiceimage/VoiceImageController$2;
.super Ljava/lang/Object;
.source "VoiceImageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/gallery3d/voiceimage/VoiceImageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$2;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$2;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #getter for: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$200(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$2;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #getter for: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$200(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/gallery3d/voiceimage/VoiceImageController$2;->this$0:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    #getter for: Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->mFadeInAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->access$300(Lcom/huawei/gallery3d/voiceimage/VoiceImageController;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    return-void
.end method
