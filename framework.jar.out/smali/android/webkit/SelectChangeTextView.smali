.class public Landroid/webkit/SelectChangeTextView;
.super Landroid/widget/TextView;
.source "SelectChangeTextView.java"


# static fields
.field private static final textSize:I = 0xe


# instance fields
.field private backView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/SelectChangeTextView;->backView:Landroid/view/View;

    .line 34
    new-instance v0, Landroid/webkit/SelectChangeTextView$1;

    invoke-direct {v0, p0}, Landroid/webkit/SelectChangeTextView$1;-><init>(Landroid/webkit/SelectChangeTextView;)V

    invoke-virtual {p0, v0}, Landroid/webkit/SelectChangeTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/SelectChangeTextView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Landroid/webkit/SelectChangeTextView;->backView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public getBackView()Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Landroid/webkit/SelectChangeTextView;->backView:Landroid/view/View;

    return-object v0
.end method

.method public setBackView(Landroid/view/View;)V
    .locals 0
    .parameter "backView"

    .prologue
    .line 29
    iput-object p1, p0, Landroid/webkit/SelectChangeTextView;->backView:Landroid/view/View;

    .line 30
    return-void
.end method
