.class public Lcom/android/gallery3d/app/DialogPicker;
.super Lcom/android/gallery3d/app/PickerActivity;
.source "DialogPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/gallery3d/app/PickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v3

    .line 31
    .local v3, typeBits:I
    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/DialogPicker;->setTitle(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 33
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 34
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, data:Landroid/os/Bundle;
    :goto_0
    const-string v4, "get-content"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    const-string v4, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v4, v5, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 40
    return-void

    .line 34
    .end local v0           #data:Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method
