.class public Lcom/android/hwcamera/focuspolicy/event/SmileCaptureEvent;
.super Ljava/lang/Object;
.source "SmileCaptureEvent.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/Event;


# instance fields
.field mSmileScore:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureEvent;->mSmileScore:I

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "smileScore"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureEvent;->mSmileScore:I

    .line 14
    iput p1, p0, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureEvent;->mSmileScore:I

    .line 15
    return-void
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "ASYNCMODE"

    return-object v0
.end method

.method public getSmileScore()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/android/hwcamera/focuspolicy/event/SmileCaptureEvent;->mSmileScore:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "smile_capture_type"

    return-object v0
.end method
