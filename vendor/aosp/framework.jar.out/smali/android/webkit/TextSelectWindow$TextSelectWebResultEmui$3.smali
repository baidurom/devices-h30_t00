.class Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$3;
.super Landroid/content/BroadcastReceiver;
.source "TextSelectWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;


# direct methods
.method constructor <init>(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)V
    .locals 0
    .parameter

    .prologue
    .line 991
    iput-object p1, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$3;->this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 993
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 995
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 996
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$3;->this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

    iget-object v3, v3, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->this$0:Landroid/webkit/TextSelectWindow;

    #getter for: Landroid/webkit/TextSelectWindow;->mOldconfig:Landroid/content/res/Configuration;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow;->access$400(Landroid/webkit/TextSelectWindow;)Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 997
    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$3;->this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

    iget-object v3, v3, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->this$0:Landroid/webkit/TextSelectWindow;

    #getter for: Landroid/webkit/TextSelectWindow;->mOldconfig:Landroid/content/res/Configuration;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow;->access$400(Landroid/webkit/TextSelectWindow;)Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 998
    .local v1, configChanges:I
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 999
    .local v2, hwthemechg:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 1000
    const-string v3, "dialogNum"

    const-string v4, "0"

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1002
    :cond_0
    iget-object v3, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$3;->this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

    iget-object v3, v3, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->this$0:Landroid/webkit/TextSelectWindow;

    #getter for: Landroid/webkit/TextSelectWindow;->mOldconfig:Landroid/content/res/Configuration;
    invoke-static {v3}, Landroid/webkit/TextSelectWindow;->access$400(Landroid/webkit/TextSelectWindow;)Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #configChanges:I
    .end local v2           #hwthemechg:Z
    :cond_1
    :goto_1
    return-void

    .line 998
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #configChanges:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1004
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #configChanges:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method
