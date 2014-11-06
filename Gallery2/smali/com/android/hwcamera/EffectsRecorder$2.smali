.class Lcom/android/hwcamera/EffectsRecorder$2;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/EffectsRecorder;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/EffectsRecorder;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/hwcamera/EffectsRecorder$2;->this$0:Lcom/android/hwcamera/EffectsRecorder;

    iput-object p2, p0, Lcom/android/hwcamera/EffectsRecorder$2;->val$exception:Ljava/lang/Exception;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder$2;->this$0:Lcom/android/hwcamera/EffectsRecorder;

    #getter for: Lcom/android/hwcamera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;
    invoke-static {v0}, Lcom/android/hwcamera/EffectsRecorder;->access$1500(Lcom/android/hwcamera/EffectsRecorder;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder$2;->this$0:Lcom/android/hwcamera/EffectsRecorder;

    #getter for: Lcom/android/hwcamera/EffectsRecorder;->mEffectsListener:Lcom/android/hwcamera/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/android/hwcamera/EffectsRecorder;->access$1400(Lcom/android/hwcamera/EffectsRecorder;)Lcom/android/hwcamera/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/EffectsRecorder$2;->val$exception:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/hwcamera/EffectsRecorder$EffectsListener;->onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1171
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder$2;->this$0:Lcom/android/hwcamera/EffectsRecorder;

    #getter for: Lcom/android/hwcamera/EffectsRecorder;->mEffectsListener:Lcom/android/hwcamera/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/android/hwcamera/EffectsRecorder;->access$1400(Lcom/android/hwcamera/EffectsRecorder;)Lcom/android/hwcamera/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/EffectsRecorder$2;->val$exception:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/android/hwcamera/EffectsRecorder$2;->this$0:Lcom/android/hwcamera/EffectsRecorder;

    #getter for: Lcom/android/hwcamera/EffectsRecorder;->mOutputFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/hwcamera/EffectsRecorder;->access$1600(Lcom/android/hwcamera/EffectsRecorder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/hwcamera/EffectsRecorder$EffectsListener;->onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
