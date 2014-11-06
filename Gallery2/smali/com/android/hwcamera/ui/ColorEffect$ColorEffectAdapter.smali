.class Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;
.super Landroid/widget/SimpleAdapter;
.source "ColorEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ui/ColorEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorEffectAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/hwcamera/ui/ColorEffect;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/ui/ColorEffect;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 494
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 495
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 496
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 501
    if-nez p2, :cond_0

    .line 502
    new-instance v1, Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;-><init>(Lcom/android/hwcamera/ui/ColorEffect$1;)V

    .line 503
    .local v1, holder:Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;
    iget-object v3, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040014

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 504
    const v3, 0x7f10003e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;->radio_image:Landroid/widget/ImageView;

    .line 505
    const v3, 0x7f10003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;->radio_title:Landroid/widget/TextView;

    .line 506
    const v3, 0x7f100040

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;->radio_selected:Landroid/widget/ImageView;

    .line 507
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 509
    .end local v1           #holder:Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;

    .line 510
    .restart local v1       #holder:Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 511
    .local v2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, v1, Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;->radio_image:Landroid/widget/ImageView;

    const-string v4, "radio_image"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    iget-object v3, v1, Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;->radio_title:Landroid/widget/TextView;

    const-string v4, "radio_title"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    const-string v3, "radio_selected"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 514
    .local v0, blackground:Ljava/lang/Object;
    if-eqz v0, :cond_1

    const-string v3, "0"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 515
    :cond_1
    iget-object v3, v1, Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;->radio_selected:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, 0x106000d

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mOrientation:I
    invoke-static {v3}, Lcom/android/hwcamera/ui/ColorEffect;->access$1900(Lcom/android/hwcamera/ui/ColorEffect;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 521
    :goto_1
    return-object p2

    .line 517
    :cond_2
    iget-object v3, v1, Lcom/android/hwcamera/ui/ColorEffect$ViewHolder;->radio_selected:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 520
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    iget-object v4, p0, Lcom/android/hwcamera/ui/ColorEffect$ColorEffectAdapter;->this$0:Lcom/android/hwcamera/ui/ColorEffect;

    #getter for: Lcom/android/hwcamera/ui/ColorEffect;->mOrientation:I
    invoke-static {v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$1900(Lcom/android/hwcamera/ui/ColorEffect;)I

    move-result v4

    #calls: Lcom/android/hwcamera/ui/ColorEffect;->rotatateView(Landroid/view/View;I)V
    invoke-static {v3, p2, v4}, Lcom/android/hwcamera/ui/ColorEffect;->access$2000(Lcom/android/hwcamera/ui/ColorEffect;Landroid/view/View;I)V

    goto :goto_1
.end method
