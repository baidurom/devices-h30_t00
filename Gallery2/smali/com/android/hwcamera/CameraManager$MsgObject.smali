.class Lcom/android/hwcamera/CameraManager$MsgObject;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgObject"
.end annotation


# instance fields
.field mSig:Landroid/os/ConditionVariable;

.field obj:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/Object;Landroid/os/ConditionVariable;)Lcom/android/hwcamera/CameraManager$MsgObject;
    .locals 1
    .parameter "obj"
    .parameter "mSig"

    .prologue
    .line 134
    new-instance v0, Lcom/android/hwcamera/CameraManager$MsgObject;

    invoke-direct {v0}, Lcom/android/hwcamera/CameraManager$MsgObject;-><init>()V

    .line 135
    .local v0, msgObject:Lcom/android/hwcamera/CameraManager$MsgObject;
    iput-object p0, v0, Lcom/android/hwcamera/CameraManager$MsgObject;->obj:Ljava/lang/Object;

    .line 136
    iput-object p1, v0, Lcom/android/hwcamera/CameraManager$MsgObject;->mSig:Landroid/os/ConditionVariable;

    .line 137
    return-object v0
.end method
