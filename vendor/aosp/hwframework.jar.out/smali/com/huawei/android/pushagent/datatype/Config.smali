.class public Lcom/huawei/android/pushagent/datatype/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field public cfg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public cfgFileName:Ljava/lang/String;

.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "cfgFileName"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfgFileName:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfgFileName:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static pareseJson(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .parameter "src"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v3, jsonCfg:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, jo:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 109
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #jo:Lorg/json/JSONObject;
    .end local v4           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "PushLog2510"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "cfgItemName"
    .parameter "defaultVal"

    .prologue
    .line 82
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/huawei/android/pushagent/datatype/Config;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 84
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 86
    .end local p2
    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4
    .parameter "cfgItemName"
    .parameter "defaultVal"

    .prologue
    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/huawei/android/pushagent/datatype/Config;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, o:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 63
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 68
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 64
    .restart local v2       #o:Ljava/lang/Object;
    .restart local p2
    :cond_1
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 65
    check-cast v2, Ljava/lang/Long;

    .end local v2           #o:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 66
    .local v0, l:J
    long-to-int p2, v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "cfgItemName"
    .parameter "defaultVal"

    .prologue
    .line 71
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/huawei/android/pushagent/datatype/Config;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 73
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .local v0, i:I
    int-to-long p2, v0

    .line 78
    .end local v0           #i:I
    .end local p2
    :cond_0
    :goto_0
    return-wide p2

    .line 75
    .restart local v1       #o:Ljava/lang/Object;
    .restart local p2
    :cond_1
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 76
    check-cast v1, Ljava/lang/Long;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cfgItemName"
    .parameter "defaultVal"

    .prologue
    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/huawei/android/pushagent/datatype/Config;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "itemName"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .parameter "def"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/Config;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 57
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public loadFromFile()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v0, fileCfg:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfgFileName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    .local v3, sf:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 128
    .local v2, set:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    .end local v2           #set:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    .line 134
    :cond_1
    return-object v0
.end method

.method public saveToFile()Z
    .locals 3

    .prologue
    .line 142
    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfgFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    .local v0, sf:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->saveMap(Ljava/util/Map;)V

    .line 144
    const/4 v1, 0x1

    return v1
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .parameter "itemName"
    .parameter "val"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfgFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .local v0, sf:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    invoke-virtual {v0, p1, p2}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 42
    const/4 v1, 0x1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 93
    const-string v0, " "

    .line 94
    .local v0, entityEnd:Ljava/lang/String;
    const-string v1, ":"

    .line 95
    .local v1, entitySplit:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v3, sb:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 97
    .local v4, set:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 99
    .end local v4           #set:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
