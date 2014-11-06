.class Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;
.super Ljava/lang/Object;
.source "PanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/PanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UtilityPanel"
.end annotation


# instance fields
.field firstTimeCropDisplayed:Z

.field private mAspectButton:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCurvesButton:Landroid/view/View;

.field private mEffectName:Ljava/lang/String;

.field private mParameterValue:I

.field private mSelected:Z

.field private mShowParameterValue:Z

.field private final mTextView:Landroid/widget/TextView;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/PanelController;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/PanelController;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "view"
    .parameter "textView"
    .parameter "aspectButton"
    .parameter "curvesButton"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 220
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mSelected:Z

    .line 212
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mEffectName:Ljava/lang/String;

    .line 213
    iput v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mParameterValue:I

    .line 214
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mShowParameterValue:Z

    .line 215
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    .line 216
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->firstTimeCropDisplayed:Z

    .line 221
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    .line 222
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    .line 223
    check-cast p4, Landroid/widget/TextView;

    .end local p4
    iput-object p4, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mTextView:Landroid/widget/TextView;

    .line 224
    iput-object p5, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    .line 225
    iput-object p6, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    .line 226
    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public hideAspectButtons()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_0
    return-void
.end method

.method public hideCurvesButtons()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :cond_0
    return-void
.end method

.method public onNewValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 309
    iput p1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mParameterValue:I

    .line 310
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->updateText()V

    .line 311
    return-void
.end method

.method public select()Landroid/view/ViewPropertyAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 347
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 349
    .local v1, h:I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setX(F)V

    .line 350
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 351
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->updateText()V

    .line 352
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 353
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 354
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 355
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mSelected:Z

    .line 356
    return-object v0
.end method

.method public selected()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mSelected:Z

    return v0
.end method

.method public setAspectButton(Landroid/widget/Button;I)V
    .locals 9
    .parameter "button"
    .parameter "itemId"

    .prologue
    const/high16 v8, 0x40e0

    const/high16 v7, 0x40a0

    const/high16 v6, 0x4080

    const/high16 v5, 0x4040

    const/high16 v4, 0x3f80

    .line 233
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mCurrentImage:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/PanelController;->access$500(Lcom/android/gallery3d/filtershow/PanelController;)Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;

    .line 234
    .local v0, imageCrop:Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;
    packed-switch p2, :pswitch_data_0

    .line 285
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 286
    return-void

    .line 236
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {v0, v4, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    .end local v1           #t:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {v0, v6, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 246
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v1           #t:Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 253
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v1           #t:Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v0, v7, v8}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 260
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    .end local v1           #t:Ljava/lang/String;
    :pswitch_5
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v0, v8, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 267
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v1           #t:Ljava/lang/String;
    :pswitch_6
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyClear()V

    .line 274
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    .end local v1           #t:Ljava/lang/String;
    :pswitch_7
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01dc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    .restart local v1       #t:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyOriginal()V

    .line 281
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x7f100252
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setEffectName(Ljava/lang/String;)V
    .locals 1
    .parameter "effectName"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mEffectName:Ljava/lang/String;

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->setShowParameter(Z)V

    .line 316
    return-void
.end method

.method public setParameterValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 360
    iput p1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mParameterValue:I

    .line 361
    return-void
.end method

.method public setShowParameter(Z)V
    .locals 0
    .parameter "s"

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mShowParameterValue:Z

    .line 320
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->updateText()V

    .line 321
    return-void
.end method

.method public showAspectButtons()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mAspectButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :cond_0
    return-void
.end method

.method public showCurvesButtons()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mCurvesButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :cond_0
    return-void
.end method

.method public unselect()Landroid/view/ViewPropertyAnimator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 332
    .local v0, anim:Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 333
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 334
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->this$0:Lcom/android/gallery3d/filtershow/PanelController;

    #getter for: Lcom/android/gallery3d/filtershow/PanelController;->mRowPanel:Landroid/view/View;
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/PanelController;->access$000(Lcom/android/gallery3d/filtershow/PanelController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 335
    .local v1, h:I
    neg-int v2, v1

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 336
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel$1;-><init>(Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 342
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mSelected:Z

    .line 343
    return-object v0
.end method

.method public updateText()V
    .locals 6

    .prologue
    .line 324
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0205

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, applystring:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mShowParameterValue:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mParameterValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, value:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mEffectName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, applyeffectvalue:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/PanelController$UtilityPanel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    return-void

    .line 325
    .end local v0           #applyeffectvalue:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
