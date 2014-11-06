.class public Lcom/android/hwcamera/facedetect/event/FaceDetectEvent;
.super Ljava/lang/Object;
.source "FaceDetectEvent.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/Event;


# instance fields
.field private facesData:[Lcom/android/hwcamera/facedetect/event/Face;


# direct methods
.method public constructor <init>([Lcom/android/hwcamera/facedetect/event/Face;)V
    .locals 0
    .parameter "facesData"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/hwcamera/facedetect/event/FaceDetectEvent;->facesData:[Lcom/android/hwcamera/facedetect/event/Face;

    .line 15
    return-void
.end method


# virtual methods
.method public getFacesData()[Lcom/android/hwcamera/facedetect/event/Face;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/hwcamera/facedetect/event/FaceDetectEvent;->facesData:[Lcom/android/hwcamera/facedetect/event/Face;

    .line 19
    .local v0, _facesData:[Lcom/android/hwcamera/facedetect/event/Face;
    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "ASYNCMODE"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "face_detect_event_type"

    return-object v0
.end method
