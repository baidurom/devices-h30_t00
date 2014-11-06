.class Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener$1;
.super Ljava/lang/Object;
.source "BurstPromptListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;->handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;

.field final synthetic val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

.field final synthetic val$isOn:Z


# direct methods
.method constructor <init>(Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;Lcom/android/hwcamera/CameraActivity;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener$1;->this$0:Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;

    iput-object p2, p0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    iput-boolean p3, p0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener$1;->val$isOn:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener$1;->this$0:Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;

    iget-object v1, p0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v2, p0, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener$1;->val$isOn:Z

    #calls: Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;->showBurstPrompt(Lcom/android/hwcamera/CameraActivity;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;->access$000(Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptListener;Lcom/android/hwcamera/CameraActivity;Z)V

    .line 41
    return-void
.end method
