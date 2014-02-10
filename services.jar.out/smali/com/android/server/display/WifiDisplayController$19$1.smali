.class Lcom/android/server/display/WifiDisplayController$19$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$WfdLinkInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayController$19;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController$19;)V
    .locals 0
    .parameter

    .prologue
    .line 1942
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$19$1;->this$1:Lcom/android/server/display/WifiDisplayController$19;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkInfoAvailable(Landroid/net/wifi/p2p/wfd/WfdLinkInfo;)V
    .locals 5
    .parameter "status"

    .prologue
    .line 1949
    if-eqz p1, :cond_1

    iget-object v3, p1, Landroid/net/wifi/p2p/wfd/WfdLinkInfo;->linkInfo:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1951
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$5600()Ljava/util/regex/Pattern;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/p2p/wfd/WfdLinkInfo;->linkInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1952
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1953
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$19$1;->this$1:Lcom/android/server/display/WifiDisplayController$19;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/display/WifiDisplayController;->parseDec(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$5700(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I

    move-result v2

    .line 1954
    .local v2, score:I
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$19$1;->this$1:Lcom/android/server/display/WifiDisplayController$19;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/display/WifiDisplayController;->parseDec(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->access$5700(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)I

    move-result v1

    .line 1957
    .local v1, rssi:I
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$19$1;->this$1:Lcom/android/server/display/WifiDisplayController$19;

    iget-object v3, v3, Lcom/android/server/display/WifiDisplayController$19;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->updateSignalLevel(II)V
    invoke-static {v3, v2, v1}, Lcom/android/server/display/WifiDisplayController;->access$5800(Lcom/android/server/display/WifiDisplayController;II)V

    .line 1969
    .end local v0           #match:Ljava/util/regex/Matcher;
    .end local v1           #rssi:I
    .end local v2           #score:I
    :goto_0
    return-void

    .line 1960
    .restart local v0       #match:Ljava/util/regex/Matcher;
    :cond_0
    const-string v3, "WifiDisplayController"

    const-string v4, "wfdLinkInfoPattern Malformed Pattern, not match String "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1965
    .end local v0           #match:Ljava/util/regex/Matcher;
    :cond_1
    const-string v3, "WifiDisplayController"

    const-string v4, "onLinkInfoAvailable() parameter is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
