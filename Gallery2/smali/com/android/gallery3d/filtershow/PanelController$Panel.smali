.class Lcom/android/gallery3d/filtershow/PanelController$Panel;
.super Ljava/lang/Object;
.source "PanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/PanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Panel"
.end annotation


# instance fields
.field private final mContainer:Landroid/view/View;

.field private mEnableWarning:Z

.field private mPosition:I

.field private final mSubviews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Landroid/view/View;

.field private final mWarning:Landroid/view/View;

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/PanelController;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "container"
    .parameter "warning"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v1, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mSubviews:Ljava/util/Vector;

    .line 79
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mView:Landroid/view/View;

    .line 80
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    .line 81
    iput-object p4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    .line 82
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mEnableWarning:Z

    .line 83
    iput p5, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    .line 84
    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/filtershow/PanelController$Panel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/filtershow/PanelController$Panel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method private selectWarning(II)V
    .locals 6
    .parameter "oldPos"
    .parameter "move"

    .prologue
    const/4 v5, 0x0

    .line 129
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mEnableWarning:Z

    if-nez v3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 134
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    .line 135
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 136
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 137
    .local v2, w:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 138
    .local v1, h:I
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$100()I

    move-result v3

    if-ne p2, v3, :cond_4

    .line 139
    iget v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    if-ge p1, v3, :cond_3

    .line 140
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 144
    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 149
    :cond_2
    :goto_2
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 150
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    goto :goto_1

    .line 145
    :cond_4
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$200()I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 146
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 147
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2
.end method

.method private unselectWarning(II)V
    .locals 6
    .parameter "newPos"
    .parameter "move"

    .prologue
    const/4 v5, 0x0

    .line 99
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 103
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    .line 104
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mWarning:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, delta:I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v4}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 107
    .local v3, w:I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v4}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 108
    .local v2, h:I
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$100()I

    move-result v4

    if-ne p2, v4, :cond_4

    .line 109
    iget v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    if-le p1, v4, :cond_3

    .line 110
    neg-int v1, v3

    .line 114
    :goto_1
    int-to-float v4, v1

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 118
    :cond_2
    :goto_2
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/gallery3d/filtershow/PanelController$Panel$1;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/filtershow/PanelController$Panel$1;-><init>(Lcom/android/gallery3d/filtershow/PanelController$Panel;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 124
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 112
    :cond_3
    move v1, v3

    goto :goto_1

    .line 115
    :cond_4
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$200()I

    move-result v4

    if-ne p2, v4, :cond_2

    .line 116
    int-to-float v4, v2

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mSubviews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public enableWarningView(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mEnableWarning:Z

    .line 88
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    return v0
.end method

.method public select(II)Landroid/view/ViewPropertyAnimator;
    .locals 6
    .parameter "oldPos"
    .parameter "move"

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->selectWarning(II)V

    .line 185
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 187
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setY(F)V

    .line 188
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 189
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 190
    .local v2, w:I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v3}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 191
    .local v1, h:I
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$100()I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 192
    iget v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    if-ge p1, v3, :cond_1

    .line 193
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 197
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 202
    :cond_0
    :goto_1
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 203
    return-object v0

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$200()I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 200
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method public unselect(II)Landroid/view/ViewPropertyAnimator;
    .locals 7
    .parameter "newPos"
    .parameter "move"

    .prologue
    const/4 v6, 0x0

    .line 155
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 156
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/PanelController$Panel;->unselectWarning(II)V

    .line 158
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setX(F)V

    .line 159
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setY(F)V

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, delta:I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v4}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 162
    .local v3, w:I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v4}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 163
    .local v2, h:I
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$100()I

    move-result v4

    if-ne p2, v4, :cond_2

    .line 164
    iget v4, p0, Lcom/android/gallery3d/filtershow/PanelController$Panel;->mPosition:I

    if-le p1, v4, :cond_1

    .line 165
    neg-int v1, v3

    .line 169
    :goto_0
    int-to-float v4, v1

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    .line 173
    :cond_0
    :goto_1
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/gallery3d/filtershow/PanelController$Panel$2;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/filtershow/PanelController$Panel$2;-><init>(Lcom/android/gallery3d/filtershow/PanelController$Panel;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 179
    return-object v0

    .line 167
    :cond_1
    move v1, v3

    goto :goto_0

    .line 170
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/filtershow/PanelController;->access$200()I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 171
    int-to-float v4, v2

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method
