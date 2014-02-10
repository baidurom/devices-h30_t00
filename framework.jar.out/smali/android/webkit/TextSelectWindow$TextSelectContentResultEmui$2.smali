.class Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$2;
.super Ljava/lang/Object;
.source "TextSelectWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;


# direct methods
.method constructor <init>(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)V
    .locals 0
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$2;->this$0:Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 771
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 772
    return-void
.end method
