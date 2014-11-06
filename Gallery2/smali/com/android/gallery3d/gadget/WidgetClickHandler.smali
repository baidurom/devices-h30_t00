.class public Lcom/android/gallery3d/gadget/WidgetClickHandler;
.super Landroid/app/Activity;
.source "WidgetClickHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoAppWidgetClickHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isValidDataUri(Landroid/net/Uri;)Z
    .locals 6
    .parameter "dataUri"

    .prologue
    const/4 v2, 0x0

    .line 38
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return v2

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetClickHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 42
    .local v1, f:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 44
    .end local v1           #f:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "PhotoAppWidgetClickHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot open uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    move v1, v3

    .line 56
    .local v1, tediousBack:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetClickHandler;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 58
    .local v2, uri:Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/android/gallery3d/gadget/WidgetClickHandler;->isValidDataUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 61
    const-string v4, "treat-back-as-up"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 69
    const v3, 0x1000c000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/gadget/WidgetClickHandler;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetClickHandler;->finish()V

    .line 76
    return-void

    .line 55
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #tediousBack:Z
    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 64
    .restart local v1       #tediousBack:Z
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_3
    const v4, 0x7f0d0293

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_1
.end method
