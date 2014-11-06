.class public Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;
.super Ljava/lang/Object;
.source "TargetTrackingEvent.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/Event;


# instance fields
.field private mFocusTargetData:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;->mFocusTargetData:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    .line 12
    return-void
.end method


# virtual methods
.method public getFocusTargetData()Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;->mFocusTargetData:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "ASYNCMODE"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "target_traking_event_type"

    return-object v0
.end method
