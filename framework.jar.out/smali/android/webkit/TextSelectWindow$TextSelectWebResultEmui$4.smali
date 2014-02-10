.class Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$4;
.super Ljava/lang/Object;
.source "TextSelectWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1029
    iput-object p1, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$4;->this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

    iput-object p2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$4;->val$url:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1032
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1034
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$4;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1035
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$4;->this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->access$500(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1036
    :catch_0
    move-exception v1

    goto :goto_0
.end method
