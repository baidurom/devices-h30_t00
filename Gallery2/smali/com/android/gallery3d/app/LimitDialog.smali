.class public Lcom/android/gallery3d/app/LimitDialog;
.super Landroid/app/AlertDialog;
.source "LimitDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final BTN_CANCEL:I = -0x2

.field private static final BTN_OK:I = -0x1

.field private static final DEFAULT_HTTP_BUFFER_SIZE:I = 0xa

.field private static final DEFAULT_HTTP_BUFFER_SIZE_MAX:I = 0x1e

.field private static final DEFAULT_HTTP_BUFFER_SIZE_MIN:I = 0x5

.field private static final DEFAULT_RTSP_BUFFER_SIZE:I = 0x6

.field private static final DEFAULT_RTSP_BUFFER_SIZE_MAX:I = 0xc

.field private static final DEFAULT_RTSP_BUFFER_SIZE_MIN:I = 0x4

.field private static final ERROR_EMPTY:I = 0x0

.field private static final ERROR_INVALID:I = 0x1

.field private static final KEY_HTTP_BUFFER_SIZE:Ljava/lang/String; = "MTK-HTTP-CACHE-SIZE"

.field private static final KEY_RTSP_BUFFER_SIZE:Ljava/lang/String; = "MTK-RTSP-CACHE-SIZE"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "LimitDialog"

.field public static final TYPE_HTTP:I = 0x2

.field public static final TYPE_RTSP:I = 0x1


# instance fields
.field private mBufferField:Landroid/widget/EditText;

.field private mBufferSize:I

.field private mBufferTip:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field private final mDefaultValue:I

.field private final mKey:Ljava/lang/String;

.field private final mMaxValue:I

.field private final mMinValue:I

.field private final mType:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 112
    iput-object p1, p0, Lcom/android/gallery3d/app/LimitDialog;->mContext:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mCr:Landroid/content/ContentResolver;

    .line 114
    iput p2, p0, Lcom/android/gallery3d/app/LimitDialog;->mType:I

    .line 115
    iget v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 116
    const-string v0, "MTK-HTTP-CACHE-SIZE"

    iput-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mKey:Ljava/lang/String;

    .line 117
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mMinValue:I

    .line 118
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mMaxValue:I

    .line 119
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mDefaultValue:I

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/app/LimitDialog;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/android/gallery3d/app/LimitDialog;->mDefaultValue:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferSize:I

    .line 127
    const-string v0, "LimitDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LimitDialog("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mBufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 121
    :cond_0
    const-string v0, "MTK-RTSP-CACHE-SIZE"

    iput-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mKey:Ljava/lang/String;

    .line 122
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mMinValue:I

    .line 123
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mMaxValue:I

    .line 124
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mDefaultValue:I

    goto :goto_0
.end method

.method private enableCacheSize()V
    .locals 4

    .prologue
    .line 204
    const-string v1, "LimitDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCacheSize() mBufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/LimitDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/app/LimitDialog;->mKey:Ljava/lang/String;

    iget v3, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferSize:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method private validate()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 179
    iget-object v3, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, bufferSize:Ljava/lang/String;
    const/4 v2, 0x1

    .line 181
    .local v2, isValid:Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    :cond_0
    const/4 v2, 0x0

    .line 194
    :cond_1
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/LimitDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 195
    if-eqz v2, :cond_5

    .line 196
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/LimitDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 201
    :cond_2
    :goto_1
    return-void

    .line 185
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferSize:I

    .line 186
    iget v3, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferSize:I

    iget v4, p0, Lcom/android/gallery3d/app/LimitDialog;->mMinValue:I

    if-lt v3, v4, :cond_4

    iget v3, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferSize:I

    iget v4, p0, Lcom/android/gallery3d/app/LimitDialog;->mMaxValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v3, v4, :cond_1

    .line 187
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v3, "LimitDialog"

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v2, 0x0

    goto :goto_0

    .line 198
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/LimitDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/LimitDialog;->validate()V

    .line 176
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 172
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 163
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/android/gallery3d/app/LimitDialog;->enableCacheSize()V

    .line 166
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 133
    iget v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mType:I

    if-ne v0, v3, :cond_0

    .line 134
    const v0, 0x7f0d031b

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/LimitDialog;->setTitle(I)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/LimitDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mView:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 160
    :goto_1
    return-void

    .line 136
    :cond_0
    const v0, 0x7f0d031e

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/LimitDialog;->setTitle(I)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/LimitDialog;->setView(Landroid/view/View;)V

    .line 147
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/app/LimitDialog;->setInverseBackgroundForced(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mView:Landroid/view/View;

    const v1, 0x7f1000f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferField:Landroid/widget/EditText;

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mView:Landroid/view/View;

    const v1, 0x7f1000f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferTip:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferField:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferField:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferSize:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/LimitDialog;->mBufferTip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/app/LimitDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0321

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/app/LimitDialog;->mMinValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/android/gallery3d/app/LimitDialog;->mMaxValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/gallery3d/app/LimitDialog;->mContext:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/gallery3d/app/LimitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 156
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/gallery3d/app/LimitDialog;->mContext:Landroid/content/Context;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/gallery3d/app/LimitDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 157
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-direct {p0}, Lcom/android/gallery3d/app/LimitDialog;->validate()V

    goto/16 :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 169
    return-void
.end method
