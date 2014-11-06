.class Lcom/android/gallery3d/app/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/SettingsActivity;->showUdpPortDialog()V
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
    .line 226
    iput-object p1, p0, Lcom/android/gallery3d/app/SettingsActivity$1;->this$0:Lcom/android/gallery3d/app/SettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity$1;->this$0:Lcom/android/gallery3d/app/SettingsActivity;

    #calls: Lcom/android/gallery3d/app/SettingsActivity;->refreshUdpPort()V
    invoke-static {v0}, Lcom/android/gallery3d/app/SettingsActivity;->access$000(Lcom/android/gallery3d/app/SettingsActivity;)V

    .line 230
    return-void
.end method
