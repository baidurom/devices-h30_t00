.class public Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
.super Ljava/lang/Object;
.source "PushPreferences.java"


# static fields
.field public static final DEF_BOOLEAN_VALUE:Z = true

.field private static final DEF_STRING_VALUE:Ljava/lang/String; = ""

.field public static final LOG_TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field protected preferenses:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    .line 53
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    const-wide/16 v0, 0x0

    .line 43
    iget-object v2, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public read()Landroid/content/ContentValues;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 93
    iget-object v9, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-nez v9, :cond_1

    .line 127
    :cond_0
    return-object v8

    .line 98
    :cond_1
    iget-object v9, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    .line 99
    .local v6, map:Ljava/util/Map;
    if-eqz v6, :cond_0

    .line 103
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v8, values:Landroid/content/ContentValues;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 106
    .local v2, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;*>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 107
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 108
    .local v5, key:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 109
    .local v7, value:Ljava/lang/Object;
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 110
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    instance-of v9, v7, Ljava/lang/Integer;

    if-nez v9, :cond_4

    instance-of v9, v7, Ljava/lang/Short;

    if-nez v9, :cond_4

    instance-of v9, v7, Ljava/lang/Byte;

    if-eqz v9, :cond_5

    .line 114
    :cond_4
    check-cast v7, Ljava/lang/Integer;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v8, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 115
    .restart local v7       #value:Ljava/lang/Object;
    :cond_5
    instance-of v9, v7, Ljava/lang/Long;

    if-eqz v9, :cond_6

    .line 116
    check-cast v7, Ljava/lang/Long;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v8, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 117
    .restart local v7       #value:Ljava/lang/Object;
    :cond_6
    instance-of v9, v7, Ljava/lang/Float;

    if-eqz v9, :cond_7

    .line 118
    check-cast v7, Ljava/lang/Float;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v8, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 119
    .restart local v7       #value:Ljava/lang/Object;
    :cond_7
    instance-of v9, v7, Ljava/lang/Double;

    if-eqz v9, :cond_8

    .line 120
    check-cast v7, Ljava/lang/Double;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 121
    .local v0, d:D
    double-to-float v9, v0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 122
    .end local v0           #d:D
    .restart local v7       #value:Ljava/lang/Object;
    :cond_8
    instance-of v9, v7, Ljava/lang/Boolean;

    if-eqz v9, :cond_2

    .line 123
    check-cast v7, Ljava/lang/Boolean;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v8, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public removeKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 197
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeKey([Ljava/lang/String;)Z
    .locals 5
    .parameter "keys"

    .prologue
    .line 203
    iget-object v4, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-nez v4, :cond_0

    .line 204
    const/4 v4, 0x0

    .line 213
    :goto_0
    return v4

    .line 207
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 208
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v4, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    iget-object v4, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 73
    iget-object v3, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 74
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 75
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    .end local p2
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    return v3

    .line 76
    .restart local p2
    :cond_1
    instance-of v3, p2, Ljava/lang/Integer;

    if-nez v3, :cond_2

    instance-of v3, p2, Ljava/lang/Short;

    if-nez v3, :cond_2

    instance-of v3, p2, Ljava/lang/Byte;

    if-eqz v3, :cond_3

    .line 79
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 80
    .restart local p2
    :cond_3
    instance-of v3, p2, Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 81
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 82
    .restart local p2
    :cond_4
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_5

    .line 83
    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 84
    .restart local p2
    :cond_5
    instance-of v3, p2, Ljava/lang/Double;

    if-eqz v3, :cond_6

    .line 85
    check-cast p2, Ljava/lang/Double;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 86
    .local v0, d:D
    double-to-float v3, v0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 87
    .end local v0           #d:D
    .restart local p2
    :cond_6
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 88
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public saveBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "Key"
    .parameter "value"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public saveInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter "Key"
    .parameter "value"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public saveLong(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .parameter "Key"
    .parameter "value"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public saveMap(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 174
    .local v0, en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v0           #en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "Key"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v2, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    goto :goto_0
.end method

.method public write(Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 55
    iget-object v5, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 70
    :cond_0
    return v4

    .line 59
    :cond_1
    iget-object v5, p0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->preferenses:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 63
    const/4 v4, 0x1

    .line 64
    .local v4, isCommitOk:Z
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    .line 65
    .local v1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 67
    const/4 v4, 0x0

    goto :goto_0
.end method
