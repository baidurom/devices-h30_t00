.class Lcom/android/gallery3d/app/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/SettingsActivity;->showBufferSizeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SettingsActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SettingsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/gallery3d/app/SettingsActivity$4;->this$0:Lcom/android/gallery3d/app/SettingsActivity;

    iput p2, p0, Lcom/android/gallery3d/app/SettingsActivity$4;->val$type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 455
    iget v0, p0, Lcom/android/gallery3d/app/SettingsActivity$4;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity$4;->this$0:Lcom/android/gallery3d/app/SettingsActivity;

    #calls: Lcom/android/gallery3d/app/SettingsActivity;->refreshBufferSizeHttp()V
    invoke-static {v0}, Lcom/android/gallery3d/app/SettingsActivity;->access$500(Lcom/android/gallery3d/app/SettingsActivity;)V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SettingsActivity$4;->this$0:Lcom/android/gallery3d/app/SettingsActivity;

    #calls: Lcom/android/gallery3d/app/SettingsActivity;->refreshBufferSizeRtsp()V
    invoke-static {v0}, Lcom/android/gallery3d/app/SettingsActivity;->access$600(Lcom/android/gallery3d/app/SettingsActivity;)V

    goto :goto_0
.end method
