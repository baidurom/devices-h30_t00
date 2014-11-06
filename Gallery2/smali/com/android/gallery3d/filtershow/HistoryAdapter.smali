.class public Lcom/android/gallery3d/filtershow/HistoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/gallery3d/filtershow/presets/ImagePreset;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HistoryAdapter"


# instance fields
.field private mCrop:Ljava/lang/String;

.field private mCurrentPresetPosition:I

.field private mEyeBigger:Ljava/lang/String;

.field private mMirror:Ljava/lang/String;

.field private mNoseReshape:Ljava/lang/String;

.field private mRedoMenuItem:Landroid/view/MenuItem;

.field private mResetMenuItem:Landroid/view/MenuItem;

.field private mRotate:Ljava/lang/String;

.field private mSkinColor:Ljava/lang/String;

.field private mSkinReshape:Ljava/lang/String;

.field private mSkinSmooth:Ljava/lang/String;

.field private mStraighten:Ljava/lang/String;

.field private mTeethWhiten:Ljava/lang/String;

.field private mUndoMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 36
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 38
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCrop:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRotate:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mStraighten:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mMirror:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mSkinSmooth:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mSkinColor:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mSkinReshape:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mNoseReshape:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mTeethWhiten:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mEyeBigger:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    .line 49
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    .line 50
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    move-object v0, p1

    .line 54
    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 56
    .local v0, activity:Lcom/android/gallery3d/filtershow/FilterShowActivity;
    const v1, 0x7f0d01eb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCrop:Ljava/lang/String;

    .line 57
    const v1, 0x7f0d01ec

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRotate:Ljava/lang/String;

    .line 58
    const v1, 0x7f0d01ea

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mStraighten:Ljava/lang/String;

    .line 59
    const v1, 0x7f0d01ed

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mMirror:Ljava/lang/String;

    .line 61
    const v1, 0x7f0d01fe

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mSkinSmooth:Ljava/lang/String;

    .line 62
    const v1, 0x7f0d01ff

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mSkinColor:Ljava/lang/String;

    .line 63
    const v1, 0x7f0d0200

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mSkinReshape:Ljava/lang/String;

    .line 64
    const v1, 0x7f0d0202

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mNoseReshape:Ljava/lang/String;

    .line 65
    const v1, 0x7f0d0203

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mTeethWhiten:Ljava/lang/String;

    .line 66
    const v1, 0x7f0d0204

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mEyeBigger:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public addHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 1
    .parameter "preset"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canAddHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->insert(Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 137
    :cond_0
    return-void
.end method

.method public canAddHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z
    .locals 2
    .parameter "preset"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canReset()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :cond_0
    return v0
.end method

.method public canUndo()Z
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 195
    move-object v7, p2

    .line 196
    .local v7, view:Landroid/view/View;
    if-nez v7, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 199
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040025

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 202
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 203
    .local v2, item:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-eqz v2, :cond_2

    .line 204
    const v8, 0x7f1000d2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 205
    .local v3, itemView:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_1
    const v8, 0x7f1000d3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 209
    .local v5, markView:Landroid/widget/ImageView;
    iget v8, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-ne p1, v8, :cond_3

    .line 211
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 216
    :goto_0
    const v8, 0x7f1000d1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 217
    .local v6, typeView:Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getFilter(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v4

    .line 218
    .local v4, lastFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getBorder()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 220
    .local v0, borderFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_4

    .line 221
    const v8, 0x7f0201c9

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    .end local v0           #borderFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .end local v3           #itemView:Landroid/widget/TextView;
    .end local v4           #lastFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .end local v5           #markView:Landroid/widget/ImageView;
    .end local v6           #typeView:Landroid/widget/ImageView;
    :cond_2
    :goto_1
    return-object v7

    .line 214
    .restart local v3       #itemView:Landroid/widget/TextView;
    .restart local v5       #markView:Landroid/widget/ImageView;
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 222
    .restart local v0       #borderFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .restart local v4       #lastFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .restart local v6       #typeView:Landroid/widget/ImageView;
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 223
    const v8, 0x7f0201c5

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 224
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 225
    const v8, 0x7f0201c9

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 226
    :cond_6
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mStraighten:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 227
    const v8, 0x7f0201cb

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 228
    :cond_7
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCrop:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 229
    const v8, 0x7f0201cb

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 230
    :cond_8
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRotate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 231
    const v8, 0x7f0201cb

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 232
    :cond_9
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mMirror:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 233
    const v8, 0x7f0201cb

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 234
    :cond_a
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mSkinSmooth:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 235
    const v8, 0x7f0201c3

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 236
    :cond_b
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mSkinColor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 237
    const v8, 0x7f0201c3

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 238
    :cond_c
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mSkinReshape:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 239
    const v8, 0x7f0201c3

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 240
    :cond_d
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mNoseReshape:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 241
    const v8, 0x7f0201c3

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 242
    :cond_e
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mTeethWhiten:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 243
    const v8, 0x7f0201c3

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 244
    :cond_f
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mEyeBigger:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 245
    const v8, 0x7f0201c3

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 247
    :cond_10
    const v8, 0x7f0201c7

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public insert(Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)V
    .locals 3
    .parameter "preset"
    .parameter "position"

    .prologue
    .line 152
    iget v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-eqz v2, :cond_2

    .line 154
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 155
    .local v1, oldItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/gallery3d/filtershow/presets/ImagePreset;>;"
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->clear()V

    .line 159
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 160
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->add(Ljava/lang/Object;)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_1
    iput p2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 163
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canAddHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 171
    .end local v0           #i:I
    .end local v1           #oldItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/gallery3d/filtershow/presets/ImagePreset;>;"
    :goto_2
    return-void

    .line 168
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 169
    iput p2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 170
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public bridge synthetic insert(Ljava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    check-cast p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->insert(Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)V

    return-void
.end method

.method public redo()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 175
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-gez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 179
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 180
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 120
    .local v0, first:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->clear()V

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->addHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    goto :goto_0
.end method

.method public setCurrentPreset(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 111
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 112
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method

.method public setMenuItems(Landroid/view/MenuItem;Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 0
    .parameter "undoItem"
    .parameter "redoItem"
    .parameter "resetItem"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    .line 71
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    .line 72
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 74
    return-void
.end method

.method public undo()I
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 185
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    .line 189
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 190
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    return v0
.end method

.method public updateMenuItems()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canUndo()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canRedo()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canReset()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 107
    :cond_2
    return-void
.end method
