.class public Lcom/android/hwcamera/settings/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/settings/MenuItem$OnClickListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final MAIN_MENU:I = 0x0

.field public static final MIDDLE:I = 0x1

.field public static final SPECIAL_MENU:I = 0x1

.field public static final TOP:I


# instance fields
.field private childViewType:I

.field private entry:Ljava/lang/String;

.field private entryValue:Ljava/lang/String;

.field private icon:I

.field private image:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private largeIcon:I

.field private mChildsLayout:Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;

.field private mContentDescription:Ljava/lang/String;

.field private mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

.field private mIndex:I

.field private mIsEnable:Z

.field private mMenuType:I

.field private mParentItem:Lcom/android/hwcamera/settings/MenuItem;

.field private mVisible:I

.field private onClickListener:Lcom/android/hwcamera/settings/MenuItem$OnClickListener;

.field private position:I

.field private prefKey:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private useSingleIcon:Z

.field private viewType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/android/hwcamera/settings/MenuItem;->useSingleIcon:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/settings/MenuItem;->position:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mIsEnable:Z

    .line 51
    iput v1, p0, Lcom/android/hwcamera/settings/MenuItem;->mVisible:I

    .line 67
    return-void
.end method

.method private setVisibility()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    iget v1, p0, Lcom/android/hwcamera/settings/MenuItem;->mVisible:I

    invoke-interface {v0, v1}, Lcom/android/hwcamera/settings/dynaui/DynamicUI;->setVisibility(I)V

    .line 255
    :cond_0
    return-void
.end method


# virtual methods
.method public addItems(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/settings/MenuItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 65
    :cond_0
    return-void

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuItem;->items:Ljava/util/List;

    if-nez v2, :cond_2

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/hwcamera/settings/MenuItem;->items:Ljava/util/List;

    .line 60
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/settings/MenuItem;

    .line 61
    .local v1, item:Lcom/android/hwcamera/settings/MenuItem;
    iget v2, p0, Lcom/android/hwcamera/settings/MenuItem;->mMenuType:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuItem;->setMenuType(I)V

    .line 62
    invoke-virtual {v1, p0}, Lcom/android/hwcamera/settings/MenuItem;->setParentItem(Lcom/android/hwcamera/settings/MenuItem;)V

    .line 63
    iget-object v2, p0, Lcom/android/hwcamera/settings/MenuItem;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public enableItem(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    .line 228
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuItem;->items:Ljava/util/List;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuItem;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    :cond_0
    move p1, v0

    .end local p1
    :cond_1
    iput-boolean p1, p0, Lcom/android/hwcamera/settings/MenuItem;->mIsEnable:Z

    .line 229
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    if-eqz v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    iget-boolean v2, p0, Lcom/android/hwcamera/settings/MenuItem;->mIsEnable:Z

    invoke-interface {v1, v2}, Lcom/android/hwcamera/settings/dynaui/DynamicUI;->enable(Z)V

    .line 232
    :cond_2
    iput v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mVisible:I

    .line 233
    invoke-direct {p0}, Lcom/android/hwcamera/settings/MenuItem;->setVisibility()V

    .line 234
    return-void
.end method

.method public getChildViewType()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/hwcamera/settings/MenuItem;->childViewType:I

    return v0
.end method

.method public getChildsLayout()Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mChildsLayout:Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;

    return-object v0
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mIsEnable:Z

    return v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->entry:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->entryValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/hwcamera/settings/MenuItem;->icon:I

    return v0
.end method

.method public getImage()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/android/hwcamera/settings/MenuItem;->image:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mIndex:I

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/settings/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLargeIcon()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/android/hwcamera/settings/MenuItem;->largeIcon:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/settings/MenuItem;->icon:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/hwcamera/settings/MenuItem;->largeIcon:I

    goto :goto_0
.end method

.method public getMenuType()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mMenuType:I

    return v0
.end method

.method public getOnClickListener()Lcom/android/hwcamera/settings/MenuItem$OnClickListener;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->onClickListener:Lcom/android/hwcamera/settings/MenuItem$OnClickListener;

    return-object v0
.end method

.method public getParentItem()Lcom/android/hwcamera/settings/MenuItem;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mParentItem:Lcom/android/hwcamera/settings/MenuItem;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/hwcamera/settings/MenuItem;->position:I

    return v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->prefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    invoke-interface {v0}, Lcom/android/hwcamera/settings/dynaui/DynamicUI;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/hwcamera/settings/MenuItem;->viewType:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 249
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mVisible:I

    .line 250
    invoke-direct {p0}, Lcom/android/hwcamera/settings/MenuItem;->setVisibility()V

    .line 251
    return-void
.end method

.method public isUseSingleIcon()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/hwcamera/settings/MenuItem;->useSingleIcon:Z

    return v0
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/settings/MenuItem;->onClick(Z)V

    .line 87
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "revert"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuItem;->onClickListener:Lcom/android/hwcamera/settings/MenuItem$OnClickListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/settings/MenuItem;->mIsEnable:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/hwcamera/Util;->isEnableMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuItem;->onClickListener:Lcom/android/hwcamera/settings/MenuItem$OnClickListener;

    invoke-interface {v1, p0, p1}, Lcom/android/hwcamera/settings/MenuItem$OnClickListener;->onClick(Lcom/android/hwcamera/settings/MenuItem;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MenuItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "menu item click error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    goto :goto_0
.end method

.method public reflate()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    invoke-interface {v0, p0}, Lcom/android/hwcamera/settings/dynaui/DynamicUI;->reflate(Lcom/android/hwcamera/settings/MenuItem;)V

    .line 184
    :cond_0
    return-void
.end method

.method public setChildViewType(I)V
    .locals 0
    .parameter "childViewType"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/hwcamera/settings/MenuItem;->childViewType:I

    .line 123
    return-void
.end method

.method public setChildsLayout(Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;)V
    .locals 0
    .parameter "mChildsView"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuItem;->mChildsLayout:Lcom/android/hwcamera/settings/dynaui/layout/DynamicLayout;

    .line 246
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "mContentDescription"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuItem;->mContentDescription:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setDynamicView(Lcom/android/hwcamera/settings/dynaui/DynamicUI;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    .line 151
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mIsEnable:Z

    .line 152
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    iget-boolean v1, p0, Lcom/android/hwcamera/settings/MenuItem;->mIsEnable:Z

    invoke-interface {v0, v1}, Lcom/android/hwcamera/settings/dynaui/DynamicUI;->enable(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    iget-object v1, p0, Lcom/android/hwcamera/settings/MenuItem;->mContentDescription:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/hwcamera/settings/dynaui/DynamicUI;->setContentDescription(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/android/hwcamera/settings/MenuItem;->setVisibility()V

    .line 157
    iget-object v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mDynamicView:Lcom/android/hwcamera/settings/dynaui/DynamicUI;

    new-instance v1, Lcom/android/hwcamera/settings/MenuItem$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/settings/MenuItem$1;-><init>(Lcom/android/hwcamera/settings/MenuItem;)V

    invoke-interface {v0, v1}, Lcom/android/hwcamera/settings/dynaui/DynamicUI;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void

    .line 151
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/settings/MenuItem;->mIsEnable:Z

    goto :goto_0
.end method

.method public setEntry(Ljava/lang/String;)V
    .locals 0
    .parameter "entry"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuItem;->entry:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setEntryValue(Ljava/lang/String;)V
    .locals 0
    .parameter "entryValue"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuItem;->entryValue:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/hwcamera/settings/MenuItem;->icon:I

    .line 115
    return-void
.end method

.method public setImage(I)V
    .locals 0
    .parameter "image"

    .prologue
    .line 268
    iput p1, p0, Lcom/android/hwcamera/settings/MenuItem;->image:I

    .line 269
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "mIndex"

    .prologue
    .line 174
    iput p1, p0, Lcom/android/hwcamera/settings/MenuItem;->mIndex:I

    .line 175
    return-void
.end method

.method public setLargeIcon(I)V
    .locals 0
    .parameter "largeIcon"

    .prologue
    .line 204
    iput p1, p0, Lcom/android/hwcamera/settings/MenuItem;->largeIcon:I

    .line 205
    return-void
.end method

.method public setMenuType(I)V
    .locals 0
    .parameter "menuType"

    .prologue
    .line 187
    iput p1, p0, Lcom/android/hwcamera/settings/MenuItem;->mMenuType:I

    .line 188
    return-void
.end method

.method public setOnClickListener(Lcom/android/hwcamera/settings/MenuItem$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuItem;->onClickListener:Lcom/android/hwcamera/settings/MenuItem$OnClickListener;

    .line 91
    return-void
.end method

.method public setParentItem(Lcom/android/hwcamera/settings/MenuItem;)V
    .locals 0
    .parameter "parentItem"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuItem;->mParentItem:Lcom/android/hwcamera/settings/MenuItem;

    .line 225
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 200
    iput p1, p0, Lcom/android/hwcamera/settings/MenuItem;->position:I

    .line 201
    return-void
.end method

.method public setPrefKey(Ljava/lang/String;)V
    .locals 0
    .parameter "prefKey"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuItem;->prefKey:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/hwcamera/settings/MenuItem;->title:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setUseSingleIcon(Z)V
    .locals 0
    .parameter "useSingleIcon"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/android/hwcamera/settings/MenuItem;->useSingleIcon:Z

    .line 213
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/hwcamera/settings/MenuItem;->viewType:I

    .line 131
    return-void
.end method
