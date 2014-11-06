.class Lcom/android/gallery3d/ui/ActionSetOnOff$1;
.super Ljava/lang/Object;
.source "ActionSetOnOff.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionSetOnOff;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ActionSetOnOff;

.field final synthetic val$originValue:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionSetOnOff;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionSetOnOff$1;->this$0:Lcom/android/gallery3d/ui/ActionSetOnOff;

    iput-boolean p2, p0, Lcom/android/gallery3d/ui/ActionSetOnOff$1;->val$originValue:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionSetOnOff$1;->this$0:Lcom/android/gallery3d/ui/ActionSetOnOff;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionSetOnOff$1;->this$0:Lcom/android/gallery3d/ui/ActionSetOnOff;

    #getter for: Lcom/android/gallery3d/ui/ActionSetOnOff;->mPropName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionSetOnOff;->access$000(Lcom/android/gallery3d/ui/ActionSetOnOff;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/ActionSetOnOff$1;->val$originValue:Z

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/ActionSetOnOff$1;->val$originValue:Z

    #calls: Lcom/android/gallery3d/ui/ActionSetOnOff;->saveAndRefresh(Ljava/lang/String;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/ActionSetOnOff;->access$100(Lcom/android/gallery3d/ui/ActionSetOnOff;Ljava/lang/String;ZZ)V

    .line 67
    return-void
.end method
