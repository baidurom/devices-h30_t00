.class Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener$1;
.super Ljava/lang/Object;
.source "TargetTrackingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;

.field final synthetic val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

.field final synthetic val$event:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;Lcom/android/hwcamera/CameraActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener$1;->this$0:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;

    iput-object p2, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener$1;->val$event:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;

    iput-object p3, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener$1;->this$0:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;

    iget-object v1, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener$1;->val$event:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;

    invoke-virtual {v1}, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingEvent;->getFocusTargetData()Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    move-result-object v1

    #setter for: Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->mFocusTargetData:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
    invoke-static {v0, v1}, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->access$002(Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    .line 32
    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, p0, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener$1;->this$0:Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;

    #getter for: Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->mFocusTargetData:Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;
    invoke-static {v1}, Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;->access$000(Lcom/android/hwcamera/eventcenter/targettraking/TargetTrackingListener;)Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->onTargetDetected(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V

    .line 33
    return-void
.end method
