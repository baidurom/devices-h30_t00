.class Landroid/webkit/TextSelectWindow$1;
.super Ljava/lang/Object;
.source "TextSelectWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/TextSelectWindow;->createPopupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/TextSelectWindow;


# direct methods
.method constructor <init>(Landroid/webkit/TextSelectWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Landroid/webkit/TextSelectWindow$1;->this$0:Landroid/webkit/TextSelectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 258
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 260
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$1;->this$0:Landroid/webkit/TextSelectWindow;

    #getter for: Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/TextSelectWindow;->access$000(Landroid/webkit/TextSelectWindow;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 267
    :goto_0
    return v0

    .line 262
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x52

    if-ne p2, v1, :cond_1

    .line 264
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$1;->this$0:Landroid/webkit/TextSelectWindow;

    #getter for: Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/TextSelectWindow;->access$000(Landroid/webkit/TextSelectWindow;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
