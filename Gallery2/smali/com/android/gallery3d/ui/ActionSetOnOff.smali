.class public Lcom/android/gallery3d/ui/ActionSetOnOff;
.super Ljava/lang/Object;
.source "ActionSetOnOff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/ActionSetOnOff$SetChangLinstener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefalutValue:Z

.field private final mDefaultSettingFileName:Ljava/lang/String;

.field private mListener:Lcom/android/gallery3d/ui/ActionSetOnOff$SetChangLinstener;

.field private mPropName:Ljava/lang/String;

.field private mSettingsFileName:Ljava/lang/String;

.field private mTitleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "prop"
    .parameter "titleId"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "gallery_settings"

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mDefaultSettingFileName:Ljava/lang/String;

    .line 20
    const-string v0, "gallery_settings"

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mSettingsFileName:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mPropName:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mTitleId:I

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/ActionSetOnOff;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mPropName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/ActionSetOnOff;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/ActionSetOnOff;->saveAndRefresh(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private saveAndRefresh(Ljava/lang/String;ZZ)V
    .locals 4
    .parameter "key"
    .parameter "value"
    .parameter "originValue"

    .prologue
    .line 75
    if-ne p2, p3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mSettingsFileName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mPropName:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mListener:Lcom/android/gallery3d/ui/ActionSetOnOff$SetChangLinstener;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mListener:Lcom/android/gallery3d/ui/ActionSetOnOff$SetChangLinstener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ActionSetOnOff$SetChangLinstener;->onChanged()V

    goto :goto_0
.end method


# virtual methods
.method public setDefaultValue(Z)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mDefalutValue:Z

    .line 40
    return-void
.end method

.method public setLinstener(Lcom/android/gallery3d/ui/ActionSetOnOff$SetChangLinstener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mListener:Lcom/android/gallery3d/ui/ActionSetOnOff$SetChangLinstener;

    .line 36
    return-void
.end method

.method public setSettingsFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "settingsFileName"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mSettingsFileName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v4, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mPropName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 71
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mSettingsFileName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 50
    .local v2, preference:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mPropName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mDefalutValue:Z

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 51
    .local v1, originValue:Z
    iget-object v4, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, choiceItems:[Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v5, p0, Lcom/android/gallery3d/ui/ActionSetOnOff;->mTitleId:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    if-eqz v1, :cond_1

    :goto_1
    new-instance v5, Lcom/android/gallery3d/ui/ActionSetOnOff$2;

    invoke-direct {v5, p0, v1}, Lcom/android/gallery3d/ui/ActionSetOnOff$2;-><init>(Lcom/android/gallery3d/ui/ActionSetOnOff;Z)V

    invoke-virtual {v4, v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d026c

    new-instance v5, Lcom/android/gallery3d/ui/ActionSetOnOff$1;

    invoke-direct {v5, p0, v1}, Lcom/android/gallery3d/ui/ActionSetOnOff$1;-><init>(Lcom/android/gallery3d/ui/ActionSetOnOff;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method
