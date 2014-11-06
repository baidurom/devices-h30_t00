.class Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;
.super Ljava/lang/Object;
.source "TextSelectWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/TextSelectWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextSelectContentResultEmui"
.end annotation


# instance fields
.field private destStr:Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mDestTextView:Landroid/widget/TextView;

.field private mMsgLin:Landroid/widget/LinearLayout;

.field private mSrcTextView:Landroid/widget/TextView;

.field private readerDialog:Landroid/app/AlertDialog$Builder;

.field private srcStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->inflater:Landroid/view/LayoutInflater;

    .line 681
    iput-object p1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->mContext:Landroid/content/Context;

    .line 682
    iput-object p2, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;

    .line 683
    iput-object p3, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->destStr:Ljava/lang/String;

    .line 684
    invoke-direct {p0, p1}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->createYouDaoDialog(Landroid/content/Context;)V

    .line 685
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 665
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createYouDaoDialog(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 688
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "androidhwext:style/Theme.Emui.Dialog.Alert"

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 689
    .local v0, themeID:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->readerDialog:Landroid/app/AlertDialog$Builder;

    .line 690
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->readerDialog:Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 691
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->readerDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x302007e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 692
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->destStr:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->destStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->readerDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x302008a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 697
    :goto_0
    invoke-direct {p0}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->showDialog()V

    .line 698
    return-void

    .line 695
    :cond_0
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->srcStr:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->destStr:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->initYouDaoDialogView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initYouDaoDialogView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "srcStr"
    .parameter "destStr"

    .prologue
    .line 780
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x3070020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->mMsgLin:Landroid/widget/LinearLayout;

    .line 782
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->mMsgLin:Landroid/widget/LinearLayout;

    const v1, 0x30d0014

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->mSrcTextView:Landroid/widget/TextView;

    .line 784
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->mMsgLin:Landroid/widget/LinearLayout;

    const v1, 0x30d0015

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->mDestTextView:Landroid/widget/TextView;

    .line 786
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->mSrcTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    const-string v0, "\\n"

    const-string v1, "\n"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 791
    iget-object v0, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->mDestTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 701
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->readerDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->mMsgLin:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 702
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->readerDialog:Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 703
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->readerDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x3020087

    new-instance v3, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;

    invoke-direct {v3, p0}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$1;-><init>(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 767
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->readerDialog:Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x104

    new-instance v3, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$2;

    invoke-direct {v3, p0}, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui$2;-><init>(Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 774
    iget-object v1, p0, Landroid/webkit/TextSelectWindow$TextSelectContentResultEmui;->readerDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 775
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 776
    return-void
.end method
