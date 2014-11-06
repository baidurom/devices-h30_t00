.class public final Landroid/content/res/ConfigurationEx;
.super Ljava/lang/Object;
.source "ConfigurationEx.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/ConfigurationEx;",
        ">;"
    }
.end annotation


# static fields
.field public static final SIMPLEUIMODE_NO:I = 0x1

.field public static final SIMPLEUIMODE_UNDEFINED:I = 0x0

.field public static final SIMPLEUIMODE_YES:I = 0x2


# instance fields
.field public hwtheme:I

.field public simpleuiMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Landroid/content/res/ConfigurationEx;->setToDefaults()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ConfigurationEx;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationEx;->setTo(Landroid/content/res/ConfigurationEx;)V

    .line 68
    return-void
.end method

.method public static needNewResources(I)Z
    .locals 1
    .parameter "configChanges"

    .prologue
    .line 151
    and-int/lit16 v0, p0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/ConfigurationEx;)I
    .locals 4
    .parameter "that"

    .prologue
    .line 166
    iget v2, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iget v3, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    sub-int v0, v2, v3

    .line 168
    .local v0, n:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 170
    .end local v0           #n:I
    .local v1, n:I
    :goto_0
    return v1

    .line 169
    .end local v1           #n:I
    .restart local v0       #n:I
    :cond_0
    iget v2, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    iget v3, p1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    sub-int v0, v2, v3

    move v1, v0

    .line 170
    .end local v0           #n:I
    .restart local v1       #n:I
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Landroid/content/res/ConfigurationEx;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationEx;->compareTo(Landroid/content/res/ConfigurationEx;)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/ConfigurationEx;)I
    .locals 3
    .parameter "delta"

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iget v2, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eq v1, v2, :cond_0

    .line 133
    or-int/lit16 v0, v0, 0x4000

    .line 135
    :cond_0
    iget v1, p1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    iget v2, p1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    if-eq v1, v2, :cond_1

    .line 137
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 139
    :cond_1
    return v0
.end method

.method public equals(Landroid/content/res/ConfigurationEx;)Z
    .locals 3
    .parameter "that"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    if-nez p1, :cond_1

    move v0, v1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    if-eq p1, p0, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationEx;->compareTo(Landroid/content/res/ConfigurationEx;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "that"

    .prologue
    .line 181
    :try_start_0
    check-cast p1, Landroid/content/res/ConfigurationEx;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationEx;->equals(Landroid/content/res/ConfigurationEx;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 184
    :goto_0
    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 193
    const/16 v0, 0x11

    .line 194
    .local v0, result:I
    iget v1, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    add-int/lit16 v0, v1, 0x20f

    .line 195
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    add-int v0, v1, v2

    .line 196
    return v0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/res/ConfigurationEx;->setToDefaults()V

    .line 99
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    .line 162
    return-void
.end method

.method public setTo(Landroid/content/res/ConfigurationEx;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 71
    iget v0, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iput v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    .line 72
    iget v0, p1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    iput v0, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    .line 73
    return-void
.end method

.method public setToDefaults()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    iput v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    .line 93
    iput v0, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eqz v1, :cond_0

    .line 78
    const-string v1, " hwt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    iget v1, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    if-eqz v1, :cond_1

    .line 82
    const-string v1, " suim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/ConfigurationEx;)I
    .locals 3
    .parameter "delta"

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, changed:I
    iget v1, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iget v2, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eq v1, v2, :cond_0

    .line 112
    or-int/lit16 v0, v0, 0x4000

    .line 113
    iget v1, p1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iput v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    .line 115
    :cond_0
    iget v1, p1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    iget v2, p1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    if-eq v1, v2, :cond_1

    .line 117
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 118
    iget v1, p1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    iput v1, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    .line 120
    :cond_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 155
    iget v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
