.class Lcom/android/gallery3d/data/DmsDeviceSet$1;
.super Ljava/lang/Object;
.source "DmsDeviceSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/DmsDeviceSet;->onFutureDone(Lcom/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/DmsDeviceSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/DmsDeviceSet;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/gallery3d/data/DmsDeviceSet$1;->this$0:Lcom/android/gallery3d/data/DmsDeviceSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet$1;->this$0:Lcom/android/gallery3d/data/DmsDeviceSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DmsDeviceSet;->notifyContentChanged()V

    .line 130
    return-void
.end method
