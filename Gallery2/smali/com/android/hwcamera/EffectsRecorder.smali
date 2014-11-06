.class public Lcom/android/hwcamera/EffectsRecorder;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/EffectsRecorder$SerializableInvocationHandler;,
        Lcom/android/hwcamera/EffectsRecorder$EffectsListener;
    }
.end annotation


# static fields
.field public static final EFFECT_BACKDROPPER:I = 0x2

.field public static final EFFECT_GF_BIG_EYES:I = 0x1

.field public static final EFFECT_GF_BIG_MOUTH:I = 0x2

.field public static final EFFECT_GF_BIG_NOSE:I = 0x4

.field public static final EFFECT_GF_SMALL_EYES:I = 0x5

.field public static final EFFECT_GF_SMALL_MOUTH:I = 0x3

.field public static final EFFECT_GF_SQUEEZE:I = 0x0

.field public static final EFFECT_GOOFY_FACE:I = 0x1

.field public static final EFFECT_MSG_DONE_LEARNING:I = 0x1

.field public static final EFFECT_MSG_EFFECTS_STOPPED:I = 0x3

.field public static final EFFECT_MSG_PREVIEW_RUNNING:I = 0x5

.field public static final EFFECT_MSG_RECORDING_DONE:I = 0x4

.field public static final EFFECT_MSG_STARTED_LEARNING:I = 0x0

.field public static final EFFECT_MSG_SWITCHING_EFFECT:I = 0x2

.field public static final EFFECT_NONE:I = 0x0

.field public static final NUM_OF_GF_EFFECTS:I = 0x6

.field private static final STATE_CONFIGURE:I = 0x0

.field private static final STATE_PREVIEW:I = 0x3

.field private static final STATE_RECORD:I = 0x4

.field private static final STATE_RELEASED:I = 0x5

.field private static final STATE_STARTING_PREVIEW:I = 0x2

.field private static final STATE_WAITING_FOR_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EffectsRecorder"

.field private static sClassFilter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsGraphEnvironment:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsGraphRunner:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsLearningDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsOnRecordingDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsOnRunnerDoneListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sClsSurfaceTextureSourceListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtGraphEnvironment:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtPoint:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sCtQuad:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static sEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

.field private static sEffectsRecorderIndex:I

.field private static sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

.field private static sFilterGraphGetFilter:Ljava/lang/reflect/Method;

.field private static sFilterGraphTearDown:Ljava/lang/reflect/Method;

.field private static sFilterIsAvailable:Ljava/lang/reflect/Method;

.field private static sFilterSetInputValue:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentActivate:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

.field private static sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

.field private static sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

.field private static sGraphRunnerGetError:Ljava/lang/reflect/Method;

.field private static sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

.field private static sGraphRunnerRun:Ljava/lang/reflect/Method;

.field private static sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

.field private static sGraphRunnerStop:Ljava/lang/reflect/Method;

.field private static sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

.field private static sObjectEquals:Ljava/lang/reflect/Method;

.field private static sObjectToString:Ljava/lang/reflect/Method;

.field private static sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

.field private static sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

.field private static sReflectionInited:Z

.field private static sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;

.field private static sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;


# instance fields
.field private mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

.field private mCameraDisplayOrientation:I

.field private mCameraFacing:I

.field private mCaptureRate:D

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mEffect:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectsListener:Lcom/android/hwcamera/EffectsRecorder$EffectsListener;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mGraphEnv:Ljava/lang/Object;

.field private mGraphId:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mLearningDoneListener:Ljava/lang/Object;

.field private mLogVerbose:Z

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mOldRunner:Ljava/lang/Object;

.field private mOrientationHint:I

.field private mOutputFile:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingDoneListener:Ljava/lang/Object;

.field private mRunner:Ljava/lang/Object;

.field private mRunnerDoneCallback:Ljava/lang/Object;

.field private mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

.field private mSourceReadyCallback:Ljava/lang/Object;

.field private mState:I

.field private mTextureSource:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 54
    sput-boolean v2, Lcom/android/hwcamera/EffectsRecorder;->sReflectionInited:Z

    .line 107
    :try_start_0
    const-string v2, "android.filterfw.core.Filter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/android/hwcamera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    .line 108
    sget-object v2, Lcom/android/hwcamera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    const-string v3, "isAvailable"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/hwcamera/EffectsRecorder;->sFilterIsAvailable:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    const-string v2, "EffectsRecorder"

    const-string v3, "Can\'t find the class android.filterfw.core.Filter"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "EffectsRecorder"

    const-string v3, "Can\'t find the method Filter.isAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 203
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mCaptureRate:D

    .line 150
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mOrientationHint:I

    .line 151
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mMaxFileSize:J

    .line 152
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mMaxDurationMs:I

    .line 153
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraFacing:I

    .line 156
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffect:I

    .line 157
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    .line 164
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 165
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 175
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    .line 177
    const-string v9, "EffectsRecorder"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    .line 204
    iget-boolean v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v9, :cond_0

    const-string v9, "EffectsRecorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EffectsRecorder created ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    sget-boolean v9, Lcom/android/hwcamera/EffectsRecorder;->sReflectionInited:Z

    if-nez v9, :cond_1

    .line 208
    :try_start_0
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClassFilter:Ljava/lang/Class;

    const-string v10, "setInputValue"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/Object;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sFilterSetInputValue:Ljava/lang/reflect/Method;

    .line 211
    const-string v9, "android.filterfw.geometry.Point"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 212
    .local v4, clsPoint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    .line 215
    const-string v9, "android.filterfw.geometry.Quad"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 216
    .local v5, clsQuad:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    .line 219
    const-string v9, "android.filterpacks.videoproc.BackDropperFilter"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    .local v0, clsBackDropperFilter:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "android.filterpacks.videoproc.BackDropperFilter$LearningDoneListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    .line 223
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    const-string v10, "onLearningDone"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

    .line 226
    const-class v9, Ljava/lang/Object;

    const-string v10, "equals"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/Object;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sObjectEquals:Ljava/lang/reflect/Method;

    .line 227
    const-class v9, Ljava/lang/Object;

    const-string v10, "toString"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sObjectToString:Ljava/lang/reflect/Method;

    .line 229
    const-string v9, "android.filterfw.core.GraphRunner$OnRunnerDoneListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    .line 231
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    const-string v10, "onRunnerDone"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

    .line 234
    const-string v9, "android.filterfw.core.GraphRunner"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    .line 235
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "getGraph"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    .line 236
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "setDoneCallback"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/hwcamera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

    .line 238
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "run"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    .line 239
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "getError"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    .line 240
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v10, "stop"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    .line 242
    const-string v9, "android.filterfw.core.FilterContext"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 243
    .local v1, clsFilterContext:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "getGLEnvironment"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

    .line 246
    const-string v9, "android.filterfw.core.FilterGraph"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 247
    .local v2, clsFilterGraph:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "getFilter"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sFilterGraphGetFilter:Ljava/lang/reflect/Method;

    .line 249
    const-string v9, "tearDown"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sFilterGraphTearDown:Ljava/lang/reflect/Method;

    .line 252
    const-string v9, "android.filterfw.GraphEnvironment"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    .line 253
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sCtGraphEnvironment:Ljava/lang/reflect/Constructor;

    .line 254
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "createGLEnvironment"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

    .line 256
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "getRunner"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

    .line 258
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "addReferences"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, [Ljava/lang/Object;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    .line 260
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "loadGraph"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/Context;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    .line 262
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v10, "getContext"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    .line 265
    const-string v9, "android.filterfw.core.GLEnvironment"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 266
    .local v3, clsGLEnvironment:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "isActive"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    .line 267
    const-string v9, "activate"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGLEnvironmentActivate:Ljava/lang/reflect/Method;

    .line 268
    const-string v9, "deactivate"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

    .line 270
    const-string v9, "android.filterpacks.videosrc.SurfaceTextureTarget"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 272
    .local v6, clsSurfaceTextureTarget:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "disconnect"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;

    .line 275
    const-string v9, "android.filterpacks.videosink.MediaEncoderFilter$OnRecordingDoneListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    .line 277
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    const-string v10, "onRecordingDone"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

    .line 280
    const-string v9, "android.filterpacks.videosrc.SurfaceTextureSource$SurfaceTextureSourceListener"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    .line 282
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    const-string v10, "onSurfaceTextureSourceReady"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/graphics/SurfaceTexture;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/android/hwcamera/EffectsRecorder;->sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/hwcamera/EffectsRecorder;->sReflectionInited:Z

    .line 293
    .end local v0           #clsBackDropperFilter:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #clsFilterContext:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #clsFilterGraph:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #clsGLEnvironment:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #clsPoint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #clsQuad:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #clsSurfaceTextureTarget:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    sget v9, Lcom/android/hwcamera/EffectsRecorder;->sEffectsRecorderIndex:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/android/hwcamera/EffectsRecorder;->sEffectsRecorderIndex:I

    .line 294
    const-string v9, "EffectsRecorder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current effects recorder index is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/hwcamera/EffectsRecorder;->sEffectsRecorderIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sput-object p0, Lcom/android/hwcamera/EffectsRecorder;->sEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    .line 296
    new-instance v8, Lcom/android/hwcamera/EffectsRecorder$SerializableInvocationHandler;

    sget v9, Lcom/android/hwcamera/EffectsRecorder;->sEffectsRecorderIndex:I

    invoke-direct {v8, v9}, Lcom/android/hwcamera/EffectsRecorder$SerializableInvocationHandler;-><init>(I)V

    .line 298
    .local v8, sih:Lcom/android/hwcamera/EffectsRecorder$SerializableInvocationHandler;
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/hwcamera/EffectsRecorder;->sClsLearningDoneListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mLearningDoneListener:Ljava/lang/Object;

    .line 301
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/hwcamera/EffectsRecorder;->sClsOnRunnerDoneListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunnerDoneCallback:Ljava/lang/Object;

    .line 304
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/hwcamera/EffectsRecorder;->sClsSurfaceTextureSourceListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mSourceReadyCallback:Ljava/lang/Object;

    .line 307
    sget-object v9, Lcom/android/hwcamera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/hwcamera/EffectsRecorder;->sClsOnRecordingDoneListener:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mRecordingDoneListener:Ljava/lang/Object;

    .line 311
    iput-object p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mContext:Landroid/content/Context;

    .line 312
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    .line 313
    invoke-static {p1}, Lcom/android/hwcamera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/hwcamera/SoundClips$Player;

    move-result-object v9

    iput-object v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    .line 314
    return-void

    .line 286
    .end local v8           #sih:Lcom/android/hwcamera/EffectsRecorder$SerializableInvocationHandler;
    :catch_0
    move-exception v7

    .line 287
    .local v7, ex:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method static synthetic access$000()Lcom/android/hwcamera/EffectsRecorder;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/hwcamera/EffectsRecorder;->sEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/hwcamera/EffectsRecorder;->sEffectsRecorderIndex:I

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/hwcamera/EffectsRecorder;->sSurfaceTextureSourceListenerOnSurfaceTextureSourceReady:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/EffectsRecorder;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/hwcamera/EffectsRecorder;->invokeOnSurfaceTextureSourceReady([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/hwcamera/EffectsRecorder;->sOnRecordingDoneListenerOnRecordingDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/EffectsRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/hwcamera/EffectsRecorder;->invokeOnRecordingDone()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/EffectsRecorder;)Lcom/android/hwcamera/EffectsRecorder$EffectsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffectsListener:Lcom/android/hwcamera/EffectsRecorder$EffectsListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/EffectsRecorder;)Ljava/io/FileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/EffectsRecorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/hwcamera/EffectsRecorder;->sObjectEquals:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/EffectsRecorder;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/EffectsRecorder;->invokeObjectEquals(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/hwcamera/EffectsRecorder;->sObjectToString:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/EffectsRecorder;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/hwcamera/EffectsRecorder;->invokeObjectToString()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/hwcamera/EffectsRecorder;->sLearningDoneListenerOnLearningDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/EffectsRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/hwcamera/EffectsRecorder;->invokeOnLearningDone()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/hwcamera/EffectsRecorder;->sOnRunnerDoneListenerOnRunnerDone:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/EffectsRecorder;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/hwcamera/EffectsRecorder;->invokeOnRunnerDone([Ljava/lang/Object;)V

    return-void
.end method

.method private getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1247
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getContextGLEnvironment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "receiver"

    .prologue
    .line 1229
    :try_start_0
    sget-object v1, Lcom/android/hwcamera/EffectsRecorder;->sFilterContextGetGLEnvironment:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "receiver"
    .parameter "name"

    .prologue
    .line 1220
    :try_start_0
    sget-object v1, Lcom/android/hwcamera/EffectsRecorder;->sFilterGraphGetFilter:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getGraphTearDown(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "receiver"
    .parameter "filterContext"

    .prologue
    .line 1238
    :try_start_0
    sget-object v1, Lcom/android/hwcamera/EffectsRecorder;->sFilterGraphTearDown:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerGetGraph:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    return-void

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized initializeEffect(Z)V
    .locals 13
    .parameter "forceReset"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 611
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    iget v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffect:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    if-ne v3, v11, :cond_5

    .line 615
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurfaceTexture"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "orientation"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-eq v3, v12, :cond_1

    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-ne v3, v11, :cond_2

    .line 624
    :cond_1
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->sendMessage(II)V

    .line 627
    :cond_2
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffect:I

    packed-switch v3, :pswitch_data_0

    .line 640
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown effect ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 629
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/hwcamera/EffectsRecorder;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f080006

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphId:I

    .line 642
    :goto_0
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffect:I

    iput v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    .line 644
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 645
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentGetRunner:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphEnvironment:Ljava/lang/Class;

    const-string v8, "MODE_ASYNCHRONOUS"

    invoke-direct {p0, v7, v8}, Lcom/android/hwcamera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 648
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerSetDoneCallback:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunnerDoneCallback:Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-boolean v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_3

    .line 650
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New runner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Old runner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_3
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-eq v3, v12, :cond_4

    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-ne v3, v11, :cond_5

    .line 657
    :cond_4
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopPreview()V

    .line 658
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 659
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 663
    :cond_5
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    packed-switch v3, :pswitch_data_1

    .line 690
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 691
    invoke-direct {p0}, Lcom/android/hwcamera/EffectsRecorder;->setRecordingOrientation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    .line 634
    :pswitch_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->sendMessage(II)V

    .line 635
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentLoadGraph:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/hwcamera/EffectsRecorder;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x7f08

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v3, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphId:I

    goto/16 :goto_0

    .line 665
    :pswitch_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 666
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "goofyrenderer"

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 667
    .local v1, goofyFilter:Ljava/lang/Object;
    const-string v4, "currentEffect"

    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v4, v3}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 671
    .end local v1           #goofyFilter:Ljava/lang/Object;
    :pswitch_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 672
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "background"

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 673
    .local v0, backgroundSrc:Ljava/lang/Object;
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

    if-eqz v3, :cond_7

    .line 676
    const-string v3, "context"

    iget-object v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 678
    :cond_7
    const-string v3, "sourceUrl"

    iget-object v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraFacing:I

    if-ne v3, v10, :cond_6

    .line 682
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "replacer"

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 683
    .local v2, replacer:Ljava/lang/Object;
    const-string v3, "mirrorBg"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    iget-boolean v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_6

    const-string v3, "EffectsRecorder"

    const-string v4, "Setting the background to be mirrored"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 663
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeFilterFramework()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 586
    sget-object v3, Lcom/android/hwcamera/EffectsRecorder;->sCtGraphEnvironment:Ljava/lang/reflect/Constructor;

    invoke-direct {p0, v3}, Lcom/android/hwcamera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    .line 587
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentCreateGLEnvironment:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 589
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 590
    .local v2, videoFrameWidth:I
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 591
    .local v1, videoFrameHeight:I
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 592
    :cond_0
    move v0, v2

    .line 593
    .local v0, tmp:I
    move v2, v1

    .line 594
    move v1, v0

    .line 597
    .end local v0           #tmp:I
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v4, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentAddReferences:Ljava/lang/reflect/Method;

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "textureSourceCallback"

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/hwcamera/EffectsRecorder;->mSourceReadyCallback:Ljava/lang/Object;

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v8, "recordingWidth"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "recordingHeight"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "recordingProfile"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/android/hwcamera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "learningDoneListener"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    iget-object v8, p0, Lcom/android/hwcamera/EffectsRecorder;->mLearningDoneListener:Ljava/lang/Object;

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "recordingDoneListener"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    iget-object v8, p0, Lcom/android/hwcamera/EffectsRecorder;->mRecordingDoneListener:Ljava/lang/Object;

    aput-object v8, v6, v7

    aput-object v6, v5, v9

    invoke-direct {p0, v3, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    .line 606
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphId:I

    .line 607
    iput v9, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    .line 608
    return-void
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .parameter "receiver"
    .parameter "method"

    .prologue
    .line 1179
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "receiver"
    .parameter "method"
    .parameter "args"

    .prologue
    .line 1188
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private invokeObjectEquals(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "proxy"
    .parameter "args"

    .prologue
    const/4 v0, 0x0

    .line 740
    aget-object v1, p2, v0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private invokeObjectToString()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invokeOnLearningDone()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 748
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Learning done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/EffectsRecorder;->sendMessage(II)V

    .line 752
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/EffectsRecorder;->enable3ALocks(Z)V

    .line 753
    return-void
.end method

.method private invokeOnRecordingDone()V
    .locals 2

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Recording done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/EffectsRecorder;->sendMessage(II)V

    .line 890
    return-void
.end method

.method private invokeOnRunnerDone([Ljava/lang/Object;)V
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 756
    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 757
    .local v2, runnerDoneResult:I
    monitor-enter p0

    .line 758
    :try_start_0
    iget-boolean v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_0

    .line 759
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Graph runner done ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOldRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    sget-object v3, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v4, "RESULT_ERROR"

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 767
    const-string v3, "EffectsRecorder"

    const-string v4, "Error running filter graph!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v0, 0x0

    .line 769
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    if-eqz v3, :cond_b

    .line 770
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #e:Ljava/lang/Exception;
    check-cast v0, Ljava/lang/Exception;

    .line 774
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/hwcamera/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V

    .line 776
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 778
    iget-boolean v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_3

    const-string v3, "EffectsRecorder"

    const-string v4, "Tearing down old graph."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/hwcamera/EffectsRecorder;->getContextGLEnvironment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 780
    .local v1, glEnv:Ljava/lang/Object;
    if-eqz v1, :cond_4

    sget-object v3, Lcom/android/hwcamera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 781
    sget-object v3, Lcom/android/hwcamera/EffectsRecorder;->sGLEnvironmentActivate:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 783
    :cond_4
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v5, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    invoke-direct {p0, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->getGraphTearDown(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 785
    if-eqz v1, :cond_5

    sget-object v3, Lcom/android/hwcamera/EffectsRecorder;->sGLEnvironmentIsActive:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 786
    sget-object v3, Lcom/android/hwcamera/EffectsRecorder;->sGLEnvironmentDeactivate:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v3}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 788
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 790
    .end local v1           #glEnv:Ljava/lang/Object;
    :cond_6
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-eq v3, v7, :cond_7

    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-ne v3, v6, :cond_c

    .line 793
    :cond_7
    iget-boolean v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_8

    .line 794
    const-string v3, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous effect halted. Running graph again. state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 809
    sget-object v3, Lcom/android/hwcamera/EffectsRecorder;->sClsGraphRunner:Ljava/lang/Class;

    const-string v4, "RESULT_ERROR"

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->getConstant(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_9

    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    if-ne v3, v6, :cond_9

    .line 812
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->sendMessage(II)V

    .line 814
    :cond_9
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 823
    :cond_a
    :goto_1
    monitor-exit p0

    .line 824
    return-void

    .line 771
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_b
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 772
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    sget-object v4, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerGetError:Ljava/lang/reflect/Method;

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #e:Ljava/lang/Exception;
    check-cast v0, Ljava/lang/Exception;

    .restart local v0       #e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 815
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_a

    .line 817
    iget-boolean v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_d

    const-string v3, "EffectsRecorder"

    const-string v4, "Runner halted, restoring direct preview"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 819
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->sendMessage(II)V

    goto :goto_1

    .line 823
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private invokeOnSurfaceTextureSourceReady([Ljava/lang/Object;)V
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 827
    aget-object v0, p1, v1

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 828
    .local v0, source:Landroid/graphics/SurfaceTexture;
    iget-boolean v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "SurfaceTexture ready callback received"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    monitor-enter p0

    .line 830
    :try_start_0
    iput-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    .line 832
    iget v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-nez v1, :cond_2

    .line 836
    iget-boolean v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_1

    const-string v1, "EffectsRecorder"

    const-string v2, "Ready callback: Already stopped, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_1
    monitor-exit p0

    .line 884
    :goto_0
    return-void

    .line 839
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-ne v1, v4, :cond_4

    .line 842
    iget-boolean v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_3

    const-string v1, "EffectsRecorder"

    const-string v2, "Ready callback: Already released, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 883
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 845
    :cond_4
    if-nez v0, :cond_9

    .line 846
    :try_start_1
    iget-boolean v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_5

    .line 847
    const-string v1, "EffectsRecorder"

    const-string v2, "Ready callback: source null! Looks like graph was closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_5
    iget v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 855
    :cond_6
    iget-boolean v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_7

    .line 856
    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ready callback: State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". stopCameraPreview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_7
    invoke-virtual {p0}, Lcom/android/hwcamera/EffectsRecorder;->stopCameraPreview()V

    .line 862
    :cond_8
    monitor-exit p0

    goto :goto_0

    .line 866
    :cond_9
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 868
    iget-object v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopPreview()V

    .line 869
    iget-boolean v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_a

    const-string v1, "EffectsRecorder"

    const-string v2, "Runner active, connecting effects preview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_a
    iget-object v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 872
    iget-object v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 875
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 877
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    .line 879
    iget-boolean v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_b

    const-string v1, "EffectsRecorder"

    const-string v2, "Start preview/effect switch complete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_b
    iget v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/EffectsRecorder;->sendMessage(II)V

    .line 883
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static isEffectSupported(I)Z
    .locals 7
    .parameter "effectId"

    .prologue
    const/4 v2, 0x0

    .line 184
    sget-object v1, Lcom/android/hwcamera/EffectsRecorder;->sFilterIsAvailable:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move v1, v2

    .line 200
    :goto_0
    return v1

    .line 187
    :cond_0
    packed-switch p0, :pswitch_data_0

    move v1, v2

    .line 195
    goto :goto_0

    .line 189
    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/android/hwcamera/EffectsRecorder;->sFilterIsAvailable:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 192
    :pswitch_1
    sget-object v1, Lcom/android/hwcamera/EffectsRecorder;->sFilterIsAvailable:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "android.filterpacks.videoproc.BackDropperFilter"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "EffectsRecorder"

    const-string v3, "Fail to check filter"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 200
    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private newInstance(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1212
    .local p1, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "initArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1204
    .local p1, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private raiseError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffectsListener:Lcom/android/hwcamera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hwcamera/EffectsRecorder$2;

    invoke-direct {v1, p0, p1}, Lcom/android/hwcamera/EffectsRecorder$2;-><init>(Lcom/android/hwcamera/EffectsRecorder;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1174
    :cond_0
    return-void
.end method

.method private sendMessage(II)V
    .locals 2
    .parameter "effect"
    .parameter "msg"

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffectsListener:Lcom/android/hwcamera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hwcamera/EffectsRecorder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/hwcamera/EffectsRecorder$1;-><init>(Lcom/android/hwcamera/EffectsRecorder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1159
    :cond_0
    return-void
.end method

.method private setFaceDetectOrientation()V
    .locals 5

    .prologue
    .line 491
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 492
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "rotate"

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 493
    .local v2, rotateFilter:Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v4, "metarotate"

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 494
    .local v0, metaRotateFilter:Ljava/lang/Object;
    const-string v3, "rotation"

    iget v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    iget v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mOrientationHint:I

    rsub-int v3, v3, 0x168

    rem-int/lit16 v1, v3, 0x168

    .line 496
    .local v1, reverseDegrees:I
    const-string v3, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    .end local v0           #metaRotateFilter:Ljava/lang/Object;
    .end local v1           #reverseDegrees:I
    .end local v2           #rotateFilter:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "receiver"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1196
    :try_start_0
    sget-object v1, Lcom/android/hwcamera/EffectsRecorder;->sFilterSetInputValue:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    return-void

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setRecordingOrientation()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 501
    iget v6, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-eq v6, v12, :cond_0

    iget-object v6, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 502
    sget-object v6, Lcom/android/hwcamera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/hwcamera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 503
    .local v0, bl:Ljava/lang/Object;
    sget-object v6, Lcom/android/hwcamera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/hwcamera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 504
    .local v1, br:Ljava/lang/Object;
    sget-object v6, Lcom/android/hwcamera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/hwcamera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 505
    .local v4, tl:Ljava/lang/Object;
    sget-object v6, Lcom/android/hwcamera/EffectsRecorder;->sCtPoint:Ljava/lang/reflect/Constructor;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/android/hwcamera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 507
    .local v5, tr:Ljava/lang/Object;
    iget v6, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraFacing:I

    if-nez v6, :cond_1

    .line 509
    sget-object v6, Lcom/android/hwcamera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v1, v7, v10

    aput-object v4, v7, v11

    aput-object v5, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/hwcamera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 521
    .local v3, recordingRegion:Ljava/lang/Object;
    :goto_0
    iget-object v6, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v7, "recorder"

    invoke-direct {p0, v6, v7}, Lcom/android/hwcamera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 522
    .local v2, recorder:Ljava/lang/Object;
    const-string v6, "inputRegion"

    invoke-direct {p0, v2, v6, v3}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    .end local v0           #bl:Ljava/lang/Object;
    .end local v1           #br:Ljava/lang/Object;
    .end local v2           #recorder:Ljava/lang/Object;
    .end local v3           #recordingRegion:Ljava/lang/Object;
    .end local v4           #tl:Ljava/lang/Object;
    .end local v5           #tr:Ljava/lang/Object;
    :cond_0
    return-void

    .line 513
    .restart local v0       #bl:Ljava/lang/Object;
    .restart local v1       #br:Ljava/lang/Object;
    .restart local v4       #tl:Ljava/lang/Object;
    .restart local v5       #tr:Ljava/lang/Object;
    :cond_1
    iget v6, p0, Lcom/android/hwcamera/EffectsRecorder;->mOrientationHint:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/hwcamera/EffectsRecorder;->mOrientationHint:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_3

    .line 515
    :cond_2
    sget-object v6, Lcom/android/hwcamera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v1, v7, v9

    aput-object v0, v7, v10

    aput-object v5, v7, v11

    aput-object v4, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/hwcamera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #recordingRegion:Ljava/lang/Object;
    goto :goto_0

    .line 518
    .end local v3           #recordingRegion:Ljava/lang/Object;
    :cond_3
    sget-object v6, Lcom/android/hwcamera/EffectsRecorder;->sCtQuad:Ljava/lang/reflect/Constructor;

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v4, v7, v9

    aput-object v5, v7, v10

    aput-object v0, v7, v11

    aput-object v1, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/android/hwcamera/EffectsRecorder;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3       #recordingRegion:Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disconnectCamera()V
    .locals 2

    .prologue
    .line 988
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Disconnecting the effects from Camera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/EffectsRecorder;->stopCameraPreview()V

    .line 990
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    monitor-exit p0

    return-void

    .line 988
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectDisplay()V
    .locals 6

    .prologue
    .line 974
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "Disconnecting the graph from the SurfaceTexture"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v2, "display"

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 977
    .local v0, display:Ljava/lang/Object;
    sget-object v1, Lcom/android/hwcamera/EffectsRecorder;->sSurfaceTextureTargetDisconnect:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mGraphEnv:Ljava/lang/Object;

    sget-object v5, Lcom/android/hwcamera/EffectsRecorder;->sGraphEnvironmentGetContext:Ljava/lang/reflect/Method;

    invoke-direct {p0, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    monitor-exit p0

    return-void

    .line 974
    .end local v0           #display:Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized enable3ALocks(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 1085
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "Enable3ALocks"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v1, :cond_2

    .line 1087
    const-string v1, "EffectsRecorder"

    const-string v2, "Camera already null. Not enabling 3A locks."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    :cond_1
    monitor-exit p0

    return-void

    .line 1090
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1091
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1092
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to lock 3A on camera with no locking support!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1085
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 1131
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1140
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    invoke-interface {v0}, Lcom/android/hwcamera/SoundClips$Player;->release()V

    .line 1142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    .line 1144
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    .line 1147
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/EffectsRecorder;->sEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    monitor-exit p0

    return-void

    .line 1137
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/hwcamera/EffectsRecorder;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1133
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCamera(Lcom/android/hwcamera/CameraManager$CameraProxy;)V
    .locals 2
    .parameter "cameraDevice"

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 328
    iput-object p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 319
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while previewing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 321
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 540
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraDisplayOrientation called after configuration!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDisplayOrientation:I

    .line 545
    return-void
.end method

.method public setCameraFacing(I)V
    .locals 2
    .parameter "facing"

    .prologue
    .line 548
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 555
    iput p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraFacing:I

    .line 556
    invoke-direct {p0}, Lcom/android/hwcamera/EffectsRecorder;->setRecordingOrientation()V

    .line 557
    return-void

    .line 550
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraFacing called on alrady released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCaptureRate(D)V
    .locals 3
    .parameter "fps"

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 425
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting time lapse capture rate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    iput-wide p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mCaptureRate:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    .line 417
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 419
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setEffect(ILjava/lang/Object;)V
    .locals 3
    .parameter "effect"
    .parameter "effectParameter"

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect: effect ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 472
    iput p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffect:I

    .line 473
    iput-object p2, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    .line 475
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 477
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/EffectsRecorder;->initializeEffect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_2
    monitor-exit p0

    return-void

    .line 465
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 467
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffectsListener(Lcom/android/hwcamera/EffectsRecorder$EffectsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffectsListener:Lcom/android/hwcamera/EffectsRecorder$EffectsListener;

    .line 488
    return-void
.end method

.method public declared-synchronized setMaxDuration(I)V
    .locals 2
    .parameter "maxDurationMs"

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 410
    iput p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mMaxDurationMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 403
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 405
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setMaxFileSize(J)V
    .locals 2
    .parameter "maxFileSize"

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 393
    iput-wide p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mMaxFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 386
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 388
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 2
    .parameter "errorListener"

    .prologue
    .line 573
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 582
    iput-object p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 583
    return-void

    .line 575
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 2
    .parameter "infoListener"

    .prologue
    .line 560
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 569
    iput-object p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 570
    return-void

    .line 562
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 526
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 533
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting orientation hint to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mOrientationHint:I

    .line 535
    invoke-direct {p0}, Lcom/android/hwcamera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 536
    invoke-direct {p0}, Lcom/android/hwcamera/EffectsRecorder;->setRecordingOrientation()V

    .line 537
    return-void

    .line 528
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOrientationHint called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 374
    iput-object p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 366
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 368
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setOutputFile(Ljava/lang/String;)V
    .locals 2
    .parameter "outputFile"

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 357
    iput-object p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 350
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 352
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .parameter "previewSurfaceTexture"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSurfaceTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 444
    iput-object p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 445
    iput p2, p0, Lcom/android/hwcamera/EffectsRecorder;->mPreviewWidth:I

    .line 446
    iput p3, p0, Lcom/android/hwcamera/EffectsRecorder;->mPreviewHeight:I

    .line 448
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_1

    .line 457
    :goto_0
    monitor-exit p0

    return-void

    .line 435
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 438
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/hwcamera/EffectsRecorder;->startPreview()V

    goto :goto_0

    .line 454
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/EffectsRecorder;->initializeEffect(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 448
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 342
    iput-object p1, p0, Lcom/android/hwcamera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 336
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 338
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    .prologue
    .line 695
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 711
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffect:I

    if-nez v0, :cond_1

    .line 712
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect selected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 701
    :pswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "startPreview called when already running preview"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    :goto_0
    monitor-exit p0

    return-void

    .line 704
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot start preview when already recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 715
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect parameter provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_3

    .line 718
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No recording profile provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_5

    .line 721
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "EffectsRecorder"

    const-string v1, "Passed a null surface; waiting for valid one"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    goto :goto_0

    .line 725
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_6

    .line 726
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera to record from!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_6
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_7

    const-string v0, "EffectsRecorder"

    const-string v1, "Initializing filter framework and running the graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_7
    invoke-direct {p0}, Lcom/android/hwcamera/EffectsRecorder;->initializeFilterFramework()V

    .line 732
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/EffectsRecorder;->initializeEffect(Z)V

    .line 734
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    .line 735
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v1, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerRun:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 697
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized startRecording()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 893
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v4, :cond_0

    const-string v4, "EffectsRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting recording ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    iget v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 905
    iget-object v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-nez v4, :cond_1

    .line 906
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No output file name or descriptor provided!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 897
    :pswitch_0
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Already recording, cannot begin anew!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 899
    :pswitch_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "startRecording called on an already released recorder!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 909
    :cond_1
    iget v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    if-nez v4, :cond_2

    .line 910
    invoke-virtual {p0}, Lcom/android/hwcamera/EffectsRecorder;->startPreview()V

    .line 913
    :cond_2
    iget-object v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v5, "recorder"

    invoke-direct {p0, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 914
    .local v1, recorder:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_5

    .line 915
    const-string v4, "outputFileDescriptor"

    iget-object v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 921
    :goto_0
    const-string v4, "audioSource"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 922
    const-string v4, "recordingProfile"

    iget-object v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 923
    const-string v4, "orientationHint"

    iget v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 928
    iget-wide v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mCaptureRate:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    .line 929
    .local v0, captureTimeLapse:Z
    :goto_1
    if-eqz v0, :cond_7

    .line 930
    const-wide/high16 v4, 0x3ff0

    iget-wide v6, p0, Lcom/android/hwcamera/EffectsRecorder;->mCaptureRate:D

    div-double v2, v4, v6

    .line 931
    .local v2, timeBetweenFrameCapture:D
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide v5, 0x412e848000000000L

    mul-double/2addr v5, v2

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 938
    .end local v2           #timeBetweenFrameCapture:D
    :goto_2
    iget-object v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v4, :cond_3

    .line 939
    const-string v4, "infoListener"

    iget-object v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 941
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v4, :cond_4

    .line 942
    const-string v4, "errorListener"

    iget-object v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 944
    :cond_4
    const-string v4, "maxFileSize"

    iget-wide v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mMaxFileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 945
    const-string v4, "maxDurationMs"

    iget v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mMaxDurationMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 946
    const-string v4, "recording"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 947
    iget-object v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/hwcamera/SoundClips$Player;->play(I)V

    .line 948
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    monitor-exit p0

    return-void

    .line 917
    .end local v0           #captureTimeLapse:Z
    :cond_5
    :try_start_2
    const-string v4, "outputFile"

    iget-object v5, p0, Lcom/android/hwcamera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 928
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 935
    .restart local v0       #captureTimeLapse:Z
    :cond_7
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 895
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized stopCameraPreview()V
    .locals 2

    .prologue
    .line 997
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Stopping camera preview."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 999
    const-string v0, "EffectsRecorder"

    const-string v1, "Camera already null. Nothing to disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    :goto_0
    monitor-exit p0

    return-void

    .line 1002
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopPreview()V

    .line 1003
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 997
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 1019
    iget v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1020
    invoke-virtual {p0}, Lcom/android/hwcamera/EffectsRecorder;->stopRecording()V

    .line 1023
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    .line 1026
    invoke-virtual {p0}, Lcom/android/hwcamera/EffectsRecorder;->stopCameraPreview()V

    .line 1028
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    .line 1029
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mOldRunner:Ljava/lang/Object;

    .line 1030
    iget-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    sget-object v1, Lcom/android/hwcamera/EffectsRecorder;->sGraphRunnerStop:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/EffectsRecorder;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 1031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    :goto_0
    monitor-exit p0

    return-void

    .line 1011
    :sswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "StopPreview called when preview not active!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1014
    :sswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stopPreview called on released EffectsRecorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1009
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized stopRecording()V
    .locals 4

    .prologue
    .line 952
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop recording ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 965
    :pswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mRunner:Ljava/lang/Object;

    const-string v2, "recorder"

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/EffectsRecorder;->getGraphFilter(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 966
    .local v0, recorder:Ljava/lang/Object;
    const-string v1, "recording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/EffectsRecorder;->setInputValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    iget-object v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/hwcamera/SoundClips$Player;->play(I)V

    .line 968
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    .end local v0           #recorder:Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-void

    .line 958
    :pswitch_1
    :try_start_1
    const-string v1, "EffectsRecorder"

    const-string v2, "StopRecording called when recording not active!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 952
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 961
    :pswitch_2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopRecording called on released EffectsRecorder!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 954
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method declared-synchronized tryEnable3ALocks(Z)Z
    .locals 4
    .parameter "toggle"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1062
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "EffectsRecorder"

    const-string v3, "tryEnable3ALocks"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v2, :cond_2

    .line 1064
    const-string v2, "EffectsRecorder"

    const-string v3, "Camera already null. Not tryenabling 3A locks."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 1067
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1068
    .local v0, params:Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_1

    .line 1072
    invoke-static {v0}, Lcom/android/hwcamera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1074
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1075
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1076
    iget-object v1, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1077
    const/4 v1, 0x1

    goto :goto_0

    .line 1062
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method tryEnableVideoStabilization(Z)Z
    .locals 5
    .parameter "toggle"

    .prologue
    const/4 v2, 0x0

    .line 1038
    iget-boolean v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_0

    const-string v3, "EffectsRecorder"

    const-string v4, "tryEnableVideoStabilization."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v3, :cond_2

    .line 1040
    const-string v3, "EffectsRecorder"

    const-string v4, "Camera already null. Not enabling video stabilization."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_1
    :goto_0
    return v2

    .line 1043
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1044
    .local v0, params:Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_1

    .line 1048
    const-string v3, "video-stabilization-supported"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, vstabSupported:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1050
    iget-boolean v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_3

    const-string v2, "EffectsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting video stabilization to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_3
    const-string v3, "video-stabilization"

    if-eqz p1, :cond_4

    const-string v2, "true"

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1053
    const/4 v2, 0x1

    goto :goto_0

    .line 1051
    :cond_4
    const-string v2, "false"

    goto :goto_1

    .line 1055
    :cond_5
    iget-boolean v3, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_1

    const-string v3, "EffectsRecorder"

    const-string v4, "Video stabilization not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
