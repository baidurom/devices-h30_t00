.class public Lcom/android/gallery3d/ui/ActionModeHandler;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionModeHandler"


# instance fields
.field private mActionbar:Landroid/app/ActionBar;

.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mMenu:Landroid/view/Menu;

.field private mMenuVisibilityBackUp:[Z

.field private mParentHomeAsUp:Z

.field private mParentSubTitle:Ljava/lang/CharSequence;

.field private mParentTitle:Ljava/lang/CharSequence;

.field private mPostStartActionMode:Z

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mTitle:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mPostStartActionMode:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mParentHomeAsUp:Z

    .line 47
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 48
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    .line 50
    return-void
.end method


# virtual methods
.method public finishActionMode()V
    .locals 5

    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v1

    .line 103
    .local v1, menuSize:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuVisibilityBackUp:[Z

    array-length v2, v2

    if-eq v2, v1, :cond_1

    .line 104
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuVisibilityBackUp.length != mMenu.size();  mMenuVisibilityBackUp.lenght = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuVisibilityBackUp:[Z

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; mMenu.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 107
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuVisibilityBackUp:[Z

    aget-boolean v3, v3, v0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mParentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mParentSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mParentHomeAsUp:Z

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 114
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 115
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method public onRestartActionMode()V
    .locals 4

    .prologue
    .line 57
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mMenu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mPostStartActionMode:Z

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()V

    .line 63
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v1

    .line 68
    .local v1, menuSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 69
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 72
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setActionBarMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 53
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    .line 54
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mTitle:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public startActionMode()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 76
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    .line 77
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mPostStartActionMode:Z

    .line 94
    :cond_0
    return-void

    .line 81
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mPostStartActionMode:Z

    .line 82
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mParentTitle:Ljava/lang/CharSequence;

    .line 83
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mParentSubTitle:Ljava/lang/CharSequence;

    .line 84
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mParentHomeAsUp:Z

    .line 86
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mActionbar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v1

    .line 89
    .local v1, menuSize:I
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuVisibilityBackUp:[Z

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuVisibilityBackUp:[Z

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v3, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 92
    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #menuSize:I
    :cond_2
    move v2, v4

    .line 84
    goto :goto_0
.end method
