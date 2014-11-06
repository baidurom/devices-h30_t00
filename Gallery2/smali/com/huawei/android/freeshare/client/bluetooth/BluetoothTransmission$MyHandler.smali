.class public Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;
.super Landroid/os/Handler;
.source "BluetoothTransmission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;)V
    .locals 1
    .parameter "transmission"

    .prologue
    .line 412
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 413
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 414
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 418
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission$MyHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;

    .line 419
    .local v0, transmission:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, p1}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;->handleMessage(Landroid/os/Message;)V

    .line 422
    :cond_0
    return-void
.end method
