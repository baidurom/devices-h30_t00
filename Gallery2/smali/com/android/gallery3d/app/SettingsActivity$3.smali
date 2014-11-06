.class Lcom/android/gallery3d/app/SettingsActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SettingsActivity;
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
    .line 418
    iput-object p1, p0, Lcom/android/gallery3d/app/SettingsActivity$3;->this$0:Lcom/android/gallery3d/app/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 421
    const-string v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMobileStateReceiver.onReceive("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity$3;->this$0:Lcom/android/gallery3d/app/SettingsActivity;

    #calls: Lcom/android/gallery3d/app/SettingsActivity;->refreshApn()V
    invoke-static {v0}, Lcom/android/gallery3d/app/SettingsActivity;->access$400(Lcom/android/gallery3d/app/SettingsActivity;)V

    .line 423
    return-void
.end method
