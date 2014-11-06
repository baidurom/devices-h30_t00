.class public Lcom/huawei/motiondetection/MotionRecoResult;
.super Ljava/lang/Object;
.source "MotionRecoResult.java"


# static fields
.field public static final MOTION_DIRECTION_DEFAULT:I = 0x0

.field public static final MOTION_DIRECTION_DOWN:I = 0x4

.field public static final MOTION_DIRECTION_LEFT:I = 0x1

.field public static final MOTION_DIRECTION_RIGHT:I = 0x2

.field public static final MOTION_DIRECTION_UP:I = 0x3

.field public static final MOTION_RECOGNITION_RESULT_1:I = 0x1

.field public static final MOTION_RECOGNITION_RESULT_2:I = 0x2

.field public static final MOTION_RECOGNITION_RESULT_FAILED:I = 0x0

.field public static final MOTION_RECOGNITION_RESULT_SUCCESSFUL:I = 0x1

.field public static final MOTION_REGISTER_TYPE_BINDSERVICE:I = 0x2

.field public static final MOTION_REGISTER_TYPE_BROADCAST:I = 0x1

.field public static final MOTION_REGISTER_TYPE_SERIAL:I = 0x3


# instance fields
.field public mMotionDirection:I

.field public mMotionExtras:Landroid/os/Bundle;

.field public mMotionType:I

.field public mRecoResult:I


# direct methods
.method public constructor <init>(IIILandroid/os/Bundle;)V
    .locals 1
    .parameter "motion"
    .parameter "result"
    .parameter "direction"
    .parameter "pExtras"

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v0, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mMotionType:I

    .line 82
    iput v0, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mRecoResult:I

    .line 95
    iput v0, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mMotionDirection:I

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mMotionExtras:Landroid/os/Bundle;

    .line 114
    iput p1, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mMotionType:I

    .line 115
    iput p2, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mRecoResult:I

    .line 116
    iput p3, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mMotionDirection:I

    .line 117
    iput-object p4, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mMotionExtras:Landroid/os/Bundle;

    .line 118
    return-void
.end method
