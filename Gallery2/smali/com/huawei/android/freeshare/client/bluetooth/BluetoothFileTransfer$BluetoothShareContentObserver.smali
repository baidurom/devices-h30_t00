.class Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$BluetoothShareContentObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothShareContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;


# direct methods
.method public constructor <init>(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$BluetoothShareContentObserver;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 124
    const-string v0, "Freeshare_BluetoothFileTransfer"

    const-string v1, "ContentObserver received notification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer$BluetoothShareContentObserver;->this$0:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;

    #calls: Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->updateFromProvider()V
    invoke-static {v0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;->access$0(Lcom/huawei/android/freeshare/client/bluetooth/BluetoothFileTransfer;)V

    .line 126
    return-void
.end method
