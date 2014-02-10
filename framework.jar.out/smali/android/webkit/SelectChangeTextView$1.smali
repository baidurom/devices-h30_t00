.class Landroid/webkit/SelectChangeTextView$1;
.super Ljava/lang/Object;
.source "SelectChangeTextView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/SelectChangeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/SelectChangeTextView;


# direct methods
.method constructor <init>(Landroid/webkit/SelectChangeTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Landroid/webkit/SelectChangeTextView$1;->this$0:Landroid/webkit/SelectChangeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 40
    .local v1, action:I
    iget-object v2, p0, Landroid/webkit/SelectChangeTextView$1;->this$0:Landroid/webkit/SelectChangeTextView;

    #getter for: Landroid/webkit/SelectChangeTextView;->backView:Landroid/view/View;
    invoke-static {v2}, Landroid/webkit/SelectChangeTextView;->access$000(Landroid/webkit/SelectChangeTextView;)Landroid/view/View;

    move-result-object v2

    const v3, 0x30d0016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    .local v0, aTextView:Landroid/widget/TextView;
    if-nez v1, :cond_6

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x30d0019

    if-ne v2, v3, :cond_2

    .line 43
    const v2, 0x303001d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setX(F)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setY(F)V

    .line 55
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 58
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const/high16 v2, 0x4160

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    :cond_0
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 67
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 69
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 77
    :cond_1
    :goto_1
    return v4

    .line 44
    .restart local p1
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x30d002a

    if-ne v2, v3, :cond_3

    .line 45
    const v2, 0x3030021

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x30d001f

    if-ne v2, v3, :cond_4

    .line 47
    const v2, 0x3030066

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 48
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x30d0022

    if-ne v2, v3, :cond_5

    .line 49
    const v2, 0x3030065

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 51
    :cond_5
    const v2, 0x303001f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 71
    :cond_6
    if-ne v1, v5, :cond_1

    .line 72
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method
