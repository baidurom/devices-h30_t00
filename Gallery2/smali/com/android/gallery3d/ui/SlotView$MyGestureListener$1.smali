.class Lcom/android/gallery3d/ui/SlotView$MyGestureListener$1;
.super Landroid/os/Handler;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView$MyGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/SlotView$MyGestureListener;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/SlotView$MyGestureListener;)V
    .locals 0
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener$1;->this$1:Lcom/android/gallery3d/ui/SlotView$MyGestureListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView$MyGestureListener$1;->this$1:Lcom/android/gallery3d/ui/SlotView$MyGestureListener;

    const/4 v1, 0x0

    #calls: Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown(Z)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;->access$2600(Lcom/android/gallery3d/ui/SlotView$MyGestureListener;Z)V

    .line 1000
    return-void
.end method
