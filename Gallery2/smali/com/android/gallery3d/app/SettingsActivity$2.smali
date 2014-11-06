.class Lcom/android/gallery3d/app/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/SettingsActivity;->showProxyDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/gallery3d/app/SettingsActivity$2;->this$0:Lcom/android/gallery3d/app/SettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 257
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/app/SettingsActivity$2;->this$0:Lcom/android/gallery3d/app/SettingsActivity;

    #getter for: Lcom/android/gallery3d/app/SettingsActivity;->mProxyDialog:Lcom/android/gallery3d/app/ProxyDialog;
    invoke-static {v1}, Lcom/android/gallery3d/app/SettingsActivity;->access$100(Lcom/android/gallery3d/app/SettingsActivity;)Lcom/android/gallery3d/app/ProxyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/ProxyDialog;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity$2;->this$0:Lcom/android/gallery3d/app/SettingsActivity;

    #calls: Lcom/android/gallery3d/app/SettingsActivity;->refreshRtspProxy()V
    invoke-static {v0}, Lcom/android/gallery3d/app/SettingsActivity;->access$200(Lcom/android/gallery3d/app/SettingsActivity;)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity$2;->this$0:Lcom/android/gallery3d/app/SettingsActivity;

    #calls: Lcom/android/gallery3d/app/SettingsActivity;->refreshHttpProxy()V
    invoke-static {v0}, Lcom/android/gallery3d/app/SettingsActivity;->access$300(Lcom/android/gallery3d/app/SettingsActivity;)V

    goto :goto_0
.end method
