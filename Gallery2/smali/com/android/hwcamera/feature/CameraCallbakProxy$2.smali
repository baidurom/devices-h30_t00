.class Lcom/android/hwcamera/feature/CameraCallbakProxy$2;
.super Ljava/lang/Object;
.source "CameraCallbakProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/feature/CameraCallbakProxy;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/feature/CameraCallbakProxy;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/feature/CameraCallbakProxy;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/hwcamera/feature/CameraCallbakProxy$2;->this$0:Lcom/android/hwcamera/feature/CameraCallbakProxy;

    iput-object p2, p0, Lcom/android/hwcamera/feature/CameraCallbakProxy$2;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/android/hwcamera/feature/CameraCallbakProxy$2;->val$args:[Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/feature/CameraCallbakProxy$2;->val$method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/hwcamera/feature/CameraCallbakProxy$2;->this$0:Lcom/android/hwcamera/feature/CameraCallbakProxy;

    #getter for: Lcom/android/hwcamera/feature/CameraCallbakProxy;->target:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->access$000(Lcom/android/hwcamera/feature/CameraCallbakProxy;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/feature/CameraCallbakProxy$2;->val$args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/feature/CameraCallbakProxy$2;->val$method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
