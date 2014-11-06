.class Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;
.super Landroid/widget/TextView;
.source "SimpleTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SimpleTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabView"
.end annotation


# instance fields
.field private mTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;)V
    .locals 2
    .parameter "context"
    .parameter "tab"

    .prologue
    .line 261
    const/4 v0, 0x0

    const v1, 0x7f010018

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 262
    iput-object p2, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->mTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    .line 263
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->update()V

    .line 264
    return-void
.end method


# virtual methods
.method public getTab()Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->mTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    return-object v0
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x2

    .line 271
    iget-object v3, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->mTab:Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 272
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 273
    .local v0, hasText:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 274
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 275
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->setGravity(I)V

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->setVisibility(I)V

    .line 283
    :goto_1
    return-void

    .end local v0           #hasText:Z
    :cond_0
    move v0, v2

    .line 272
    goto :goto_0

    .line 280
    .restart local v0       #hasText:Z
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->setVisibility(I)V

    .line 281
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
