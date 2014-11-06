.class Lcom/android/hwcamera/control/Switcher$1;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/control/Switcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/control/Switcher;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/control/Switcher;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/hwcamera/control/Switcher$1;->this$0:Lcom/android/hwcamera/control/Switcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/hwcamera/control/Switcher$1;->this$0:Lcom/android/hwcamera/control/Switcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/control/Switcher;->setEnabled(Z)V

    .line 70
    return-void
.end method
