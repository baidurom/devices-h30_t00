.class public Landroid/content/pm/PackageItemInfo;
.super Ljava/lang/Object;
.source "PackageItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageItemInfo$IconType;,
        Landroid/content/pm/PackageItemInfo$DisplayNameComparator;
    }
.end annotation


# static fields
.field static final sIsHwTheme:Z


# instance fields
.field public icon:I

.field public labelRes:I

.field public logo:I

.field public metaData:Landroid/os/Bundle;

.field public name:Ljava/lang/String;

.field public nonLocalizedLabel:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 297
    const-string/jumbo v1, "ro.config.hwtheme"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/content/pm/PackageItemInfo;->sIsHwTheme:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageItemInfo;)V
    .locals 1
    .parameter "orig"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 94
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 95
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 96
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 97
    :cond_1
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 98
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 99
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 100
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 256
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 260
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 265
    return-void
.end method


# virtual methods
.method protected dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 244
    return-void
.end method

.method protected dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 231
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 235
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v0, :cond_2

    .line 236
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "labelRes=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nonLocalizedLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " icon=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 240
    :cond_2
    return-void
.end method

.method protected getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "pm"

    .prologue
    .line 149
    iget v4, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v4, :cond_0

    .line 150
    iget-object v4, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v5, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 151
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 169
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 157
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "/data/data/com.baidu.thememanager.ui/files"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 158
    .local v3, sb:Ljava/lang/StringBuffer;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "icons"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 162
    invoke-static {}, Landroid/content/ThemeDefine;->getIconReplaceMap()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    invoke-static {}, Landroid/content/ThemeDefine;->getIconReplaceMap()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 164
    .local v2, resid:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 169
    .end local v2           #resid:I
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"

    .prologue
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/content/ThemeDefine;->getReplacelabel()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/content/ThemeDefine;->getReplacelabel()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "pm"

    .prologue
    .line 183
    iget v1, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 189
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 3
    .parameter "pm"
    .parameter "name"

    .prologue
    .line 221
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, resid:I
    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 227
    .end local v0           #resid:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateIconCache()V
    .locals 7

    .prologue
    .line 306
    iget v5, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v5, :cond_1

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 307
    .local v1, id:I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, idAndPackageName:Ljava/lang/String;
    invoke-static {v2}, Landroid/content/IconCache;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 309
    iget-object v5, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v4, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 311
    .local v4, tmpName:Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, lc:Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_0

    const-string/jumbo v5, "shortcut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    const-string v5, ".cts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    .line 313
    new-instance v0, Landroid/content/IconCache$CacheEntry;

    invoke-direct {v0}, Landroid/content/IconCache$CacheEntry;-><init>()V

    .line 314
    .local v0, ce:Landroid/content/IconCache$CacheEntry;
    iput-object v4, v0, Landroid/content/IconCache$CacheEntry;->name:Ljava/lang/String;

    .line 315
    iget v5, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_3
    iput v5, v0, Landroid/content/IconCache$CacheEntry;->type:I

    .line 316
    invoke-static {v2, v0}, Landroid/content/IconCache;->add(Ljava/lang/String;Landroid/content/IconCache$CacheEntry;)V

    .line 319
    .end local v0           #ce:Landroid/content/IconCache$CacheEntry;
    .end local v3           #lc:Ljava/lang/String;
    .end local v4           #tmpName:Ljava/lang/String;
    :cond_0
    return-void

    .line 306
    .end local v1           #id:I
    .end local v2           #idAndPackageName:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v1, v5, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_0

    .line 309
    .restart local v1       #id:I
    .restart local v2       #idAndPackageName:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 311
    .restart local v4       #tmpName:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 315
    .restart local v0       #ce:Landroid/content/IconCache$CacheEntry;
    .restart local v3       #lc:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    .line 247
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 251
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 254
    return-void
.end method
