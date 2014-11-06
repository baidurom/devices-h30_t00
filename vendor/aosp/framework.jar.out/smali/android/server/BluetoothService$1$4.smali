.class Landroid/server/BluetoothService$1$4;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 651
    iput-object p1, p0, Landroid/server/BluetoothService$1$4;->this$1:Landroid/server/BluetoothService$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 654
    const-string v0, "BluetoothService"

    const-string v1, "WFD Conflict: user wants to use BT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Landroid/server/BluetoothService$1$4;->this$1:Landroid/server/BluetoothService$1;

    iget-object v0, v0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 656
    iget-object v0, p0, Landroid/server/BluetoothService$1$4;->this$1:Landroid/server/BluetoothService$1;

    iget-object v0, v0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->enable()Z

    .line 657
    return-void
.end method
