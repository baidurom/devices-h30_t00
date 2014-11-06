.class final Lcom/android/hwcamera/Util$3;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/Util;->setDailogMessage(IIILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$positiveRunable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/hwcamera/Util$3;->val$positiveRunable:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/hwcamera/Util$3;->val$positiveRunable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/hwcamera/Util$3;->val$positiveRunable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 204
    :cond_0
    return-void
.end method
