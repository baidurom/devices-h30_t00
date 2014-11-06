.class Lcom/android/hwcamera/PhotoModule$5;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PhotoModule;->addIdleHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$5;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 1209
    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->ensureOSXCompatible()V

    .line 1210
    const/4 v0, 0x0

    return v0
.end method
