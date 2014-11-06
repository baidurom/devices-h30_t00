.class Lcom/android/gallery3d/ui/SetSwitch$2;
.super Ljava/lang/Object;
.source "SetSwitch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/SetSwitch;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/SetSwitch;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/SetSwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/ui/SetSwitch$2;->this$0:Lcom/android/gallery3d/ui/SetSwitch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/gallery3d/ui/SetSwitch$2;->this$0:Lcom/android/gallery3d/ui/SetSwitch;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/android/gallery3d/ui/SetSwitch;->process(Z)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/SetSwitch;->access$100(Lcom/android/gallery3d/ui/SetSwitch;Z)V

    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
