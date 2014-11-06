.class Landroid/server/BluetoothService$1;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/BluetoothService;->handleWfdConflict()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 646
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 648
    .local v0, r:Landroid/content/res/Resources;
    const-string v1, "BluetoothService"

    const-string v2, "WFD Conflict: rhythm user wants to use BT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContextEmui:Landroid/view/ContextThemeWrapper;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Landroid/view/ContextThemeWrapper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x2050075

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040447

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/server/BluetoothService$1$4;

    invoke-direct {v4, p0}, Landroid/server/BluetoothService$1$4;-><init>(Landroid/server/BluetoothService$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040413

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/server/BluetoothService$1$3;

    invoke-direct {v4, p0}, Landroid/server/BluetoothService$1$3;-><init>(Landroid/server/BluetoothService$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Landroid/server/BluetoothService$1$2;

    invoke-direct {v3, p0}, Landroid/server/BluetoothService$1$2;-><init>(Landroid/server/BluetoothService$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Landroid/server/BluetoothService$1$1;

    invoke-direct {v3, p0}, Landroid/server/BluetoothService$1$1;-><init>(Landroid/server/BluetoothService$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Landroid/server/BluetoothService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Landroid/server/BluetoothService;->access$202(Landroid/server/BluetoothService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 682
    iget-object v1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 683
    iget-object v1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 685
    iget-object v1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBtWfdDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 686
    return-void
.end method
