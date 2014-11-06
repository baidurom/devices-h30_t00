.class Lcom/android/gallery3d/app/MovieActivity$1;
.super Landroid/os/Handler;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 155
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 157
    :pswitch_0
    const-string v6, "about:Taps"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 158
    .local v4, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    const-class v7, Lcom/android/gallery3d/app/SettingsActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v3, intentSetting:Landroid/content/Intent;
    const/high16 v6, 0x410

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v6, v3}, Lcom/android/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    const-string v6, "MovieActivity"

    const-string v7, "gotosettings()"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v3           #intentSetting:Landroid/content/Intent;
    :pswitch_2
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/gallery3d/app/MovieActivity;->access$000(Lcom/android/gallery3d/app/MovieActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, url:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-static {v6, v5, v5}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v5           #url:Ljava/lang/String;
    :pswitch_3
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #calls: Lcom/android/gallery3d/app/MovieActivity;->isBrowserOfHuaweiExisted()Z
    invoke-static {v6}, Lcom/android/gallery3d/app/MovieActivity;->access$100(Lcom/android/gallery3d/app/MovieActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v2, intentBrowser:Landroid/content/Intent;
    const-string v6, "com.android.browser"

    const-string v7, "com.android.browser.ComboViewActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "disable_new_window"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    const-string v6, "combo_args"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v6, v2}, Lcom/android/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #intentBrowser:Landroid/content/Intent;
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity$1;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    const v7, 0x7f0d0347

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
