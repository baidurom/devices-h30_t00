.class Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$6;
.super Ljava/lang/Object;
.source "TextSelectWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;


# direct methods
.method constructor <init>(Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;)V
    .locals 0
    .parameter

    .prologue
    .line 1051
    iput-object p1, p0, Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui$6;->this$1:Landroid/webkit/TextSelectWindow$TextSelectWebResultEmui;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1054
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1055
    return-void
.end method
