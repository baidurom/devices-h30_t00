.class Landroid/server/BluetoothService$1$2;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/BluetoothService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/server/BluetoothService$1;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Landroid/server/BluetoothService$1$2;->this$1:Landroid/server/BluetoothService$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 669
    const-string v0, "BluetoothService"

    const-string v1, "WFD Conflict: onCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Landroid/server/BluetoothService$1$2;->this$1:Landroid/server/BluetoothService$1;

    iget-object v0, v0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->wfdRejectEnable()V
    invoke-static {v0}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)V

    .line 671
    return-void
.end method
