.class Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "SimpleTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SimpleTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/SimpleTabWidget;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/SimpleTabWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;->this$0:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/SimpleTabWidget;Lcom/android/gallery3d/ui/SimpleTabWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;-><init>(Lcom/android/gallery3d/ui/SimpleTabWidget;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 239
    iget-object v3, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;->this$0:Lcom/android/gallery3d/ui/SimpleTabWidget;

    #getter for: Lcom/android/gallery3d/ui/SimpleTabWidget;->mClickable:Z
    invoke-static {v3}, Lcom/android/gallery3d/ui/SimpleTabWidget;->access$100(Lcom/android/gallery3d/ui/SimpleTabWidget;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    :cond_0
    return-void

    .line 240
    :cond_1
    instance-of v3, p1, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 241
    check-cast v3, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SimpleTabWidget$TabView;->getTab()Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SimpleTabWidget$Tab;->select()V

    .line 243
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;->this$0:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getChildCount()I

    move-result v2

    .line 244
    .local v2, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/gallery3d/ui/SimpleTabWidget$TabClickListener;->this$0:Lcom/android/gallery3d/ui/SimpleTabWidget;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/SimpleTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, child:Landroid/view/View;
    if-ne v0, p1, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
