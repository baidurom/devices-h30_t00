.class public Lcom/android/gallery3d/app/FaceMenuPopupWindow;
.super Landroid/widget/PopupWindow;
.source "FaceMenuPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceMenuPopupWindow"


# instance fields
.field private mAboutButton:Landroid/widget/ImageButton;

.field private mArrow:Landroid/widget/ImageView;

.field private mContainer:Landroid/view/ViewGroup;

.field private mEmailButton:Landroid/widget/ImageButton;

.field private mFaceId:I

.field private mListener:Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;

.field private mName:Landroid/widget/TextView;

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mPhoneButton:Landroid/widget/ImageButton;

.field private mSettingsButton:Landroid/view/View;

.field private mSmsButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;)V
    .locals 5
    .parameter "context"
    .parameter "layout"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mParentLayout:Landroid/view/ViewGroup;

    .line 45
    iput-object p3, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mListener:Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;

    .line 47
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mContainer:Landroid/view/ViewGroup;

    .line 50
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->setHeight(I)V

    .line 52
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->setWidth(I)V

    .line 53
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->setOutsideTouchable(Z)V

    .line 55
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->setFocusable(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->update()V

    .line 58
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f10005e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mArrow:Landroid/widget/ImageView;

    .line 59
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f100055

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mSettingsButton:Landroid/view/View;

    .line 60
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f100062

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mPhoneButton:Landroid/widget/ImageButton;

    .line 61
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f100063

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mSmsButton:Landroid/widget/ImageButton;

    .line 62
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f100064

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mEmailButton:Landroid/widget/ImageButton;

    .line 63
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f100065

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mAboutButton:Landroid/widget/ImageButton;

    .line 64
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mName:Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mPhoneButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mSmsButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mEmailButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mAboutButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mPhoneButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mSmsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mEmailButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mAboutButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method public enableCall(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mPhoneButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 117
    return-void
.end method

.method public enableEmail(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mEmailButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 127
    return-void
.end method

.method public enableMessage(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mSmsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 122
    return-void
.end method

.method public getShowFaceId()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mFaceId:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->dismiss()V

    .line 96
    return-void

    .line 78
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mListener:Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mFaceId:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;->onClick(II)V

    goto :goto_0

    .line 81
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mListener:Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mFaceId:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;->onClick(II)V

    goto :goto_0

    .line 84
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mListener:Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mFaceId:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;->onClick(II)V

    goto :goto_0

    .line 87
    :sswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mListener:Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mFaceId:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;->onClick(II)V

    goto :goto_0

    .line 90
    :sswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mListener:Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mFaceId:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/app/FaceMenuPopupWindow$Listener;->onClick(II)V

    goto :goto_0

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100055 -> :sswitch_0
        0x7f100062 -> :sswitch_1
        0x7f100063 -> :sswitch_2
        0x7f100064 -> :sswitch_3
        0x7f100065 -> :sswitch_4
    .end sparse-switch
.end method

.method public updateLocation(Landroid/graphics/Point;IZ)V
    .locals 5
    .parameter "point"
    .parameter "padding"
    .parameter "show"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 99
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 101
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    if-eqz p3, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mParentLayout:Landroid/view/ViewGroup;

    const v2, 0x800033

    invoke-virtual {p0, v1, v2, v4, v4}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 105
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->update(IIII)V

    .line 106
    return-void
.end method

.method public updateName(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "faceId"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iput p2, p0, Lcom/android/gallery3d/app/FaceMenuPopupWindow;->mFaceId:I

    .line 112
    return-void
.end method
