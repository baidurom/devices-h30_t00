.class public Landroid/widget/HwSpinner;
.super Landroid/widget/Spinner;
.source "HwSpinner.java"


# static fields
.field private static privatePopUpfield:Ljava/lang/reflect/Field;


# instance fields
.field private preferTopPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    const-class v1, Landroid/widget/Spinner;

    .line 26
    .local v1, spinnerClass:Ljava/lang/Class;
    :try_start_0
    const-string v2, "mPopup"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/widget/HwSpinner;->privatePopUpfield:Ljava/lang/reflect/Field;

    .line 27
    sget-object v2, Landroid/widget/HwSpinner;->privatePopUpfield:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/HwSpinner;->preferTopPosition:I

    .line 36
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 6

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v2

    .line 42
    .local v2, handled:Z
    if-eqz v2, :cond_0

    .line 44
    :try_start_0
    sget-object v5, Landroid/widget/HwSpinner;->privatePopUpfield:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 45
    .local v4, privatePopupWindow:Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v5, v4, Landroid/widget/ListPopupWindow;

    if-eqz v5, :cond_0

    .line 46
    move-object v0, v4

    check-cast v0, Landroid/widget/ListPopupWindow;

    move-object v3, v0

    .line 47
    .local v3, listPopupWindow:Landroid/widget/ListPopupWindow;
    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    iget v5, p0, Landroid/widget/HwSpinner;->preferTopPosition:I

    if-ltz v5, :cond_0

    .line 49
    iget v5, p0, Landroid/widget/HwSpinner;->preferTopPosition:I

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v3           #listPopupWindow:Landroid/widget/ListPopupWindow;
    .end local v4           #privatePopupWindow:Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreferTopPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 67
    iput p1, p0, Landroid/widget/HwSpinner;->preferTopPosition:I

    .line 68
    return-void
.end method
