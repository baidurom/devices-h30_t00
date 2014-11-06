.class Lcom/android/hwcamera/EffectsRecorder$1;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/EffectsRecorder;->sendMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/EffectsRecorder;

.field final synthetic val$effect:I

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/android/hwcamera/EffectsRecorder;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/android/hwcamera/EffectsRecorder$1;->this$0:Lcom/android/hwcamera/EffectsRecorder;

    iput p2, p0, Lcom/android/hwcamera/EffectsRecorder$1;->val$effect:I

    iput p3, p0, Lcom/android/hwcamera/EffectsRecorder$1;->val$msg:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder$1;->this$0:Lcom/android/hwcamera/EffectsRecorder;

    #getter for: Lcom/android/hwcamera/EffectsRecorder;->mEffectsListener:Lcom/android/hwcamera/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/android/hwcamera/EffectsRecorder;->access$1400(Lcom/android/hwcamera/EffectsRecorder;)Lcom/android/hwcamera/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/EffectsRecorder$1;->val$effect:I

    iget v2, p0, Lcom/android/hwcamera/EffectsRecorder$1;->val$msg:I

    invoke-interface {v0, v1, v2}, Lcom/android/hwcamera/EffectsRecorder$EffectsListener;->onEffectsUpdate(II)V

    .line 1156
    return-void
.end method
