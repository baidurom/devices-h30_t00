.class Lcom/android/gallery3d/ui/SetSwitch$1;
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
    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/ui/SetSwitch$1;->this$0:Lcom/android/gallery3d/ui/SetSwitch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/ui/SetSwitch$1;->this$0:Lcom/android/gallery3d/ui/SetSwitch;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SetSwitch$1;->this$0:Lcom/android/gallery3d/ui/SetSwitch;

    #getter for: Lcom/android/gallery3d/ui/SetSwitch;->mOriginValue:Z
    invoke-static {v1}, Lcom/android/gallery3d/ui/SetSwitch;->access$000(Lcom/android/gallery3d/ui/SetSwitch;)Z

    move-result v1

    #calls: Lcom/android/gallery3d/ui/SetSwitch;->process(Z)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/SetSwitch;->access$100(Lcom/android/gallery3d/ui/SetSwitch;Z)V

    .line 51
    return-void
.end method
