.class public Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorEvent;
.super Ljava/lang/Object;
.source "CameraErrorEvent.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/Event;


# static fields
.field public static final CAMERA_ERROR_STARTPREVIEW:I = 0x24

.field public static final CAMERA_ERROR_TAKEPICTURE:I = 0x23


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorEvent;->errorCode:I

    .line 15
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/hwcamera/eventcenter/cameraerror/CameraErrorEvent;->errorCode:I

    return v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "ASYNCMODE"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "camera_error_event_type"

    return-object v0
.end method
