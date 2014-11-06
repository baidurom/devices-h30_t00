.class Lcom/android/gallery3d/app/DmrController$4;
.super Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;
.source "DmrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/DmrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/DmrController;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/DmrController;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/gallery3d/app/DmrController$4;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeToMirror()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$4;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/DmrController;->finish()V

    .line 253
    return-void
.end method

.method public onControllerLaunched()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$4;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/DmrController;->finish()V

    .line 245
    return-void
.end method

.method public onCurrentDeviceDown(Ljava/lang/String;)V
    .locals 1
    .parameter "deviceName"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$4;->this$0:Lcom/android/gallery3d/app/DmrController;

    #calls: Lcom/android/gallery3d/app/DmrController;->playMovie()V
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$1400(Lcom/android/gallery3d/app/DmrController;)V

    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$4;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/DmrController;->finish()V

    .line 241
    return-void
.end method

.method public onLostDmrControl()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$4;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/DmrController;->finish()V

    .line 249
    return-void
.end method

.method public onPushFailed()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$4;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/DmrController;->finish()V

    .line 257
    return-void
.end method

.method public onUserDisconnect()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$4;->this$0:Lcom/android/gallery3d/app/DmrController;

    #calls: Lcom/android/gallery3d/app/DmrController;->playMovie()V
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$1400(Lcom/android/gallery3d/app/DmrController;)V

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$4;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/DmrController;->finish()V

    .line 236
    return-void
.end method
