.class Lcom/android/hwcamera/eventcenter/AsyncEventPublisher$1;
.super Ljava/lang/Object;
.source "AsyncEventPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->publish(Lcom/android/hwcamera/eventcenter/Event;Ljava/util/List;Lcom/android/hwcamera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;

.field final synthetic val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

.field final synthetic val$event:Lcom/android/hwcamera/eventcenter/Event;

.field final synthetic val$listener:Lcom/android/hwcamera/eventcenter/EventListener;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;Lcom/android/hwcamera/eventcenter/EventListener;Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher$1;->this$0:Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;

    iput-object p2, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher$1;->val$listener:Lcom/android/hwcamera/eventcenter/EventListener;

    iput-object p3, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher$1;->val$event:Lcom/android/hwcamera/eventcenter/Event;

    iput-object p4, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher$1;->val$listener:Lcom/android/hwcamera/eventcenter/EventListener;

    iget-object v1, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher$1;->val$event:Lcom/android/hwcamera/eventcenter/Event;

    iget-object v2, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher$1;->val$cameraActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-interface {v0, v1, v2}, Lcom/android/hwcamera/eventcenter/EventListener;->handle(Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V

    .line 42
    return-void
.end method
