.class Landroid/webkit/TextSelectWindow$2;
.super Ljava/lang/Object;
.source "TextSelectWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/TextSelectWindow;->setListener()V
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
    .line 275
    iput-object p1, p0, Landroid/webkit/TextSelectWindow$2;->this$0:Landroid/webkit/TextSelectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 278
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_1

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$2;->this$0:Landroid/webkit/TextSelectWindow;

    invoke-virtual {v0}, Landroid/webkit/TextSelectWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$2;->this$0:Landroid/webkit/TextSelectWindow;

    #getter for: Landroid/webkit/TextSelectWindow;->webViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/TextSelectWindow;->access$000(Landroid/webkit/TextSelectWindow;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 283
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
