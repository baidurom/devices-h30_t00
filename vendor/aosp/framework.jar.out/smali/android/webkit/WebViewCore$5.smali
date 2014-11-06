.class Landroid/webkit/WebViewCore$5;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkit/NotificationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore;->notificationManagerShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Landroid/webkit/WebViewCore$5;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Z)V
    .locals 0
    .parameter "origin"
    .parameter "allow"

    .prologue
    .line 636
    return-void
.end method

.method public invokeEvent(Ljava/lang/String;I)V
    .locals 3
    .parameter "eventName"
    .parameter "pointer"

    .prologue
    .line 640
    new-instance v0, Landroid/webkit/WebViewCore$InvokeEventparams;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$InvokeEventparams;-><init>()V

    .line 641
    .local v0, localInvokeEventparams:Landroid/webkit/WebViewCore$InvokeEventparams;
    iput-object p1, v0, Landroid/webkit/WebViewCore$InvokeEventparams;->mEventName:Ljava/lang/String;

    .line 642
    iput p2, v0, Landroid/webkit/WebViewCore$InvokeEventparams;->mPointer:I

    .line 643
    iget-object v1, p0, Landroid/webkit/WebViewCore$5;->this$0:Landroid/webkit/WebViewCore;

    const/16 v2, 0xea

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 644
    return-void
.end method

.method public invokeNotificationID(II)V
    .locals 3
    .parameter "id"
    .parameter "counter"

    .prologue
    .line 648
    new-instance v0, Landroid/webkit/WebViewCore$InvokeNotifyID;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$InvokeNotifyID;-><init>()V

    .line 649
    .local v0, localInvokeNotifyID:Landroid/webkit/WebViewCore$InvokeNotifyID;
    iput p1, v0, Landroid/webkit/WebViewCore$InvokeNotifyID;->mnotificationID:I

    .line 650
    iput p2, v0, Landroid/webkit/WebViewCore$InvokeNotifyID;->mcounter:I

    .line 651
    iget-object v1, p0, Landroid/webkit/WebViewCore$5;->this$0:Landroid/webkit/WebViewCore;

    const/16 v2, 0xe8

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 652
    return-void
.end method
