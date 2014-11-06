.class Lcom/android/gallery3d/app/AbstractGalleryActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v1, "privacy_mode_value"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #calls: Lcom/android/gallery3d/app/AbstractGalleryActivity;->setPrivacyMode(Z)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$000(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    .line 102
    return-void
.end method
