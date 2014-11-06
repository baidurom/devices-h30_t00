.class public Lcom/android/gallery3d/ui/SetSwitch;
.super Ljava/lang/Object;
.source "SetSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SetSwitch$SetChangLinstener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/gallery3d/ui/SetSwitch$SetChangLinstener;

.field private mOriginValue:Z

.field private mTitleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0
    .parameter "context"
    .parameter "titleId"
    .parameter "originValue"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/gallery3d/ui/SetSwitch;->mContext:Landroid/content/Context;

    .line 26
    iput p2, p0, Lcom/android/gallery3d/ui/SetSwitch;->mTitleId:I

    .line 27
    iput-boolean p3, p0, Lcom/android/gallery3d/ui/SetSwitch;->mOriginValue:Z

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/SetSwitch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SetSwitch;->mOriginValue:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/SetSwitch;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/SetSwitch;->process(Z)V

    return-void
.end method

.method private process(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SetSwitch;->mOriginValue:Z

    if-ne p1, v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SetSwitch;->mListener:Lcom/android/gallery3d/ui/SetSwitch$SetChangLinstener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/SetSwitch;->mListener:Lcom/android/gallery3d/ui/SetSwitch$SetChangLinstener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/SetSwitch$SetChangLinstener;->onChanged(Z)V

    goto :goto_0
.end method


# virtual methods
.method public setLinstener(Lcom/android/gallery3d/ui/SetSwitch$SetChangLinstener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/ui/SetSwitch;->mListener:Lcom/android/gallery3d/ui/SetSwitch$SetChangLinstener;

    .line 32
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/android/gallery3d/ui/SetSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, choiceItems:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/ui/SetSwitch;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/android/gallery3d/ui/SetSwitch;->mTitleId:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SetSwitch;->mOriginValue:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    new-instance v3, Lcom/android/gallery3d/ui/SetSwitch$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/SetSwitch$2;-><init>(Lcom/android/gallery3d/ui/SetSwitch;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d026c

    new-instance v3, Lcom/android/gallery3d/ui/SetSwitch$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/SetSwitch$1;-><init>(Lcom/android/gallery3d/ui/SetSwitch;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 55
    return-void

    .line 36
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
