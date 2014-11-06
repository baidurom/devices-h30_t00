.class Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$7;
.super Landroid/webkit/WebViewClient;
.source "TextSelectWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->setWebView(Landroid/webkit/WebView;)V
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
    .line 1073
    iput-object p1, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$7;->this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1080
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$7;->this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->access$600(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1081
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1082
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1076
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$7;->this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

    #getter for: Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->access$600(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1077
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1078
    return-void
.end method
