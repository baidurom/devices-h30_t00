.class public Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;
.super Ljava/lang/Object;
.source "UpdateFocusParametersEvent.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/Event;


# instance fields
.field private mIsForceUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;->mIsForceUpdate:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "mIsForceUpdate"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;->mIsForceUpdate:Z

    .line 20
    iput-boolean p1, p0, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;->mIsForceUpdate:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "ASYNCMODE"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "update_focus_parameters_type"

    return-object v0
.end method

.method public isForceUpdate()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/hwcamera/focuspolicy/event/UpdateFocusParametersEvent;->mIsForceUpdate:Z

    return v0
.end method
