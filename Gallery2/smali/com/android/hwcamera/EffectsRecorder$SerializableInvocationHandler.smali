.class Lcom/android/hwcamera/EffectsRecorder$SerializableInvocationHandler;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializableInvocationHandler"
.end annotation


# instance fields
.field private final mEffectsRecorderIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1099
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    iput p1, p0, Lcom/android/hwcamera/EffectsRecorder$SerializableInvocationHandler;->mEffectsRecorderIndex:I

    .line 1101
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1106
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$000()Lcom/android/hwcamera/EffectsRecorder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return-object v0

    .line 1107
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/EffectsRecorder$SerializableInvocationHandler;->mEffectsRecorderIndex:I

    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$100()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1108
    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore old callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder$SerializableInvocationHandler;->mEffectsRecorderIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1111
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$200()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1112
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$000()Lcom/android/hwcamera/EffectsRecorder;

    move-result-object v0

    #calls: Lcom/android/hwcamera/EffectsRecorder;->invokeObjectEquals(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1, p3}, Lcom/android/hwcamera/EffectsRecorder;->access$300(Lcom/android/hwcamera/EffectsRecorder;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1113
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$400()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1114
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$000()Lcom/android/hwcamera/EffectsRecorder;

    move-result-object v0

    #calls: Lcom/android/hwcamera/EffectsRecorder;->invokeObjectToString()Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/hwcamera/EffectsRecorder;->access$500(Lcom/android/hwcamera/EffectsRecorder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1115
    :cond_4
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$600()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1116
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$000()Lcom/android/hwcamera/EffectsRecorder;

    move-result-object v1

    #calls: Lcom/android/hwcamera/EffectsRecorder;->invokeOnLearningDone()V
    invoke-static {v1}, Lcom/android/hwcamera/EffectsRecorder;->access$700(Lcom/android/hwcamera/EffectsRecorder;)V

    goto :goto_0

    .line 1117
    :cond_5
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$800()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1118
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$000()Lcom/android/hwcamera/EffectsRecorder;

    move-result-object v1

    #calls: Lcom/android/hwcamera/EffectsRecorder;->invokeOnRunnerDone([Ljava/lang/Object;)V
    invoke-static {v1, p3}, Lcom/android/hwcamera/EffectsRecorder;->access$900(Lcom/android/hwcamera/EffectsRecorder;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1119
    :cond_6
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$1000()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1121
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$000()Lcom/android/hwcamera/EffectsRecorder;

    move-result-object v1

    #calls: Lcom/android/hwcamera/EffectsRecorder;->invokeOnSurfaceTextureSourceReady([Ljava/lang/Object;)V
    invoke-static {v1, p3}, Lcom/android/hwcamera/EffectsRecorder;->access$1100(Lcom/android/hwcamera/EffectsRecorder;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1122
    :cond_7
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$1200()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1123
    invoke-static {}, Lcom/android/hwcamera/EffectsRecorder;->access$000()Lcom/android/hwcamera/EffectsRecorder;

    move-result-object v1

    #calls: Lcom/android/hwcamera/EffectsRecorder;->invokeOnRecordingDone()V
    invoke-static {v1}, Lcom/android/hwcamera/EffectsRecorder;->access$1300(Lcom/android/hwcamera/EffectsRecorder;)V

    goto/16 :goto_0
.end method
