.class Lcn/real/device/HelixSubTitleManager$1;
.super Ljava/lang/Object;
.source "HelixSubTitleManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/real/device/HelixSubTitleManager;->showChooseSubtitleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/real/device/HelixSubTitleManager;


# direct methods
.method constructor <init>(Lcn/real/device/HelixSubTitleManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcn/real/device/HelixSubTitleManager$1;->this$0:Lcn/real/device/HelixSubTitleManager;

    .line 340
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 343
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 344
    return-void
.end method
