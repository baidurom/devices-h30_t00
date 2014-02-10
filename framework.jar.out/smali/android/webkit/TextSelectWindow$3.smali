.class Landroid/webkit/TextSelectWindow$3;
.super Ljava/lang/Object;
.source "TextSelectWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/TextSelectWindow;->dictSelection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/TextSelectWindow;


# direct methods
.method constructor <init>(Landroid/webkit/TextSelectWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Landroid/webkit/TextSelectWindow$3;->this$0:Landroid/webkit/TextSelectWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 463
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 464
    return-void
.end method
