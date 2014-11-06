.class Lcom/android/hwcamera/settings/AbstractMenuInflater$1;
.super Ljava/lang/Object;
.source "AbstractMenuInflater.java"

# interfaces
.implements Lcom/android/hwcamera/settings/MenuItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/settings/AbstractMenuInflater;->inflateRootItemView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/android/hwcamera/settings/MenuItem;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/settings/AbstractMenuInflater;

.field final synthetic val$clickListener:Lcom/android/hwcamera/settings/MenuItem$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/settings/AbstractMenuInflater;Lcom/android/hwcamera/settings/MenuItem$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/hwcamera/settings/AbstractMenuInflater$1;->this$0:Lcom/android/hwcamera/settings/AbstractMenuInflater;

    iput-object p2, p0, Lcom/android/hwcamera/settings/AbstractMenuInflater$1;->val$clickListener:Lcom/android/hwcamera/settings/MenuItem$OnClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/hwcamera/settings/MenuItem;Z)V
    .locals 1
    .parameter "item"
    .parameter "revert"

    .prologue
    .line 77
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/settings/AbstractMenuInflater$1;->this$0:Lcom/android/hwcamera/settings/AbstractMenuInflater;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/AbstractMenuInflater;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/hwcamera/settings/AbstractMenuInflater$1;->this$0:Lcom/android/hwcamera/settings/AbstractMenuInflater;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/AbstractMenuInflater;->popupDismissed()V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/settings/AbstractMenuInflater$1;->val$clickListener:Lcom/android/hwcamera/settings/MenuItem$OnClickListener;

    invoke-interface {v0, p1, p2}, Lcom/android/hwcamera/settings/MenuItem$OnClickListener;->onClick(Lcom/android/hwcamera/settings/MenuItem;Z)V

    goto :goto_0
.end method
