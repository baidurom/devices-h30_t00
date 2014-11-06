.class public Lcom/android/gallery3d/app/ProxyDialog;
.super Landroid/app/AlertDialog;
.source "ProxyDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final BTN_CANCEL:I = -0x2

.field private static final BTN_OK:I = -0x1

.field private static final ERROR_HOST_EMPTY:I = 0x0

.field private static final ERROR_HOST_INVALID:I = 0x2

.field private static final ERROR_NONE:I = -0x1

.field private static final ERROR_PORT_EMPTY:I = 0x1

.field private static final ERROR_PORT_INVALID:I = 0x3

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery3D/ProxyDialog"

.field public static final TYPE_HTTP:I = 0x2

.field public static final TYPE_RTSP:I = 0x1

.field private static final UNKNOWN_PORT:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field private mHost:Ljava/lang/String;

.field private mHostErrMsg:Landroid/widget/TextView;

.field private mHostField:Landroid/widget/EditText;

.field private mPort:Ljava/lang/String;

.field private mPortErrMsg:Landroid/widget/TextView;

.field private mPortField:Landroid/widget/EditText;

.field private mSettingKeyProxyHost:Ljava/lang/String;

.field private mSettingKeyProxyPort:Ljava/lang/String;

.field private final mType:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 109
    iput-object p1, p0, Lcom/android/gallery3d/app/ProxyDialog;->mContext:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/app/ProxyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    .line 111
    iput p2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mType:I

    .line 112
    iget v0, p0, Lcom/android/gallery3d/app/ProxyDialog;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 113
    const-string v0, "mtk_rtsp_proxy_host"

    iput-object v0, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    .line 114
    const-string v0, "mtk_rtsp_proxy_port"

    iput-object v0, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    .line 122
    :goto_0
    const-string v0, "Gallery3D/ProxyDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxyDialog("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "Gallery3D/ProxyDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING_KEY_PROXY_HOST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v0, "Gallery3D/ProxyDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING_KEY_PROXY_PORT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 115
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/ProxyDialog;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 116
    const-string v0, "mtk_http_proxy_host"

    iput-object v0, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    .line 117
    const-string v0, "mtk_http_proxy_port"

    iput-object v0, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". type should be one of ProxyDialog.TYPE_RTSP and ProxyDialog.TYPE_HTTP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enableProxy()V
    .locals 5

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, save:Z
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHost:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHost:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 291
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    const/4 v1, 0x1

    .line 298
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    :cond_1
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 5
    .parameter "errCode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 257
    iget-object v1, p0, Lcom/android/gallery3d/app/ProxyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, errMsg:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 279
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/ProxyDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/ProxyDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    :cond_0
    return-void

    .line 261
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostField:Landroid/widget/EditText;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortField:Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostErrMsg:Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :pswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortErrMsg:Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validate()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 213
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHost:Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    .line 215
    const/4 v1, 0x1

    .line 217
    .local v1, isValid:Z
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostField:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortField:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostErrMsg:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortErrMsg:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 223
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/ProxyDialog;->showError(I)V

    .line 225
    const/4 v1, 0x0

    .line 227
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 228
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/ProxyDialog;->showError(I)V

    .line 229
    const/4 v1, 0x0

    .line 231
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 234
    .local v2, port:I
    if-lez v2, :cond_2

    const v3, 0xffff

    if-le v2, v3, :cond_3

    .line 235
    :cond_2
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/ProxyDialog;->showError(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/4 v1, 0x0

    .line 245
    .end local v2           #port:I
    :cond_3
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/ProxyDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 246
    if-eqz v1, :cond_5

    .line 247
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/ProxyDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    :cond_4
    :goto_1
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "Gallery3D/ProxyDialog"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0, v8}, Lcom/android/gallery3d/app/ProxyDialog;->showError(I)V

    .line 241
    const/4 v1, 0x0

    goto :goto_0

    .line 249
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/ProxyDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/gallery3d/app/ProxyDialog;->validate()V

    .line 210
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 206
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/gallery3d/app/ProxyDialog;->mType:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 197
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/android/gallery3d/app/ProxyDialog;->enableProxy()V

    .line 200
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 130
    iget v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 131
    const v2, 0x7f0d02fc

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/ProxyDialog;->setTitle(I)V

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ProxyDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04006f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mView:Landroid/view/View;

    .line 138
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 187
    :goto_1
    return-void

    .line 133
    :cond_0
    const v2, 0x7f0d0300

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/ProxyDialog;->setTitle(I)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/ProxyDialog;->setView(Landroid/view/View;)V

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mView:Landroid/view/View;

    const v3, 0x7f1001f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostField:Landroid/widget/EditText;

    .line 148
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mView:Landroid/view/View;

    const v3, 0x7f1001f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortField:Landroid/widget/EditText;

    .line 150
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostField:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortField:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyHost:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHost:Ljava/lang/String;

    .line 152
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHost:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostField:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mSettingKeyProxyPort:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 156
    .local v1, port:I
    if-ne v1, v5, :cond_7

    .line 157
    const-string v2, ""

    iput-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    .line 166
    :goto_3
    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    .end local v1           #port:I
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mView:Landroid/view/View;

    const v3, 0x7f1001f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostErrMsg:Landroid/widget/TextView;

    .line 171
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostErrMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 172
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mHostErrMsg:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mView:Landroid/view/View;

    const v3, 0x7f1001f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortErrMsg:Landroid/widget/TextView;

    .line 176
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortErrMsg:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 177
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPortErrMsg:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2, p0}, Lcom/android/gallery3d/app/ProxyDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 181
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/gallery3d/app/ProxyDialog;->mContext:Landroid/content/Context;

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/gallery3d/app/ProxyDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 183
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-direct {p0}, Lcom/android/gallery3d/app/ProxyDialog;->validate()V

    goto/16 :goto_1

    .line 152
    :cond_6
    const-string v2, ""

    goto :goto_2

    .line 160
    .restart local v1       #port:I
    :cond_7
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "Gallery3D/ProxyDialog"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v2, ""

    iput-object v2, p0, Lcom/android/gallery3d/app/ProxyDialog;->mPort:Ljava/lang/String;

    goto :goto_3

    .line 166
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_8
    const-string v2, ""

    goto :goto_4
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 203
    return-void
.end method
