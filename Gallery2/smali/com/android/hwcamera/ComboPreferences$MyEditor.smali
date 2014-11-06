.class Lcom/android/hwcamera/ComboPreferences$MyEditor;
.super Ljava/lang/Object;
.source "ComboPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ComboPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEditor"
.end annotation


# instance fields
.field private mEditorGlobal:Landroid/content/SharedPreferences$Editor;

.field private mEditorLocal:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/android/hwcamera/ComboPreferences;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->this$0:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    #getter for: Lcom/android/hwcamera/ComboPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/hwcamera/ComboPreferences;->access$000(Lcom/android/hwcamera/ComboPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    .line 169
    #getter for: Lcom/android/hwcamera/ComboPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/hwcamera/ComboPreferences;->access$100(Lcom/android/hwcamera/ComboPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    .line 170
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 189
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 190
    return-object p0
.end method

.method public commit()Z
    .locals 3

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 175
    .local v0, result1:Z
    iget-object v2, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 176
    .local v1, result2:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 242
    #calls: Lcom/android/hwcamera/ComboPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/hwcamera/ComboPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 247
    :goto_0
    return-object p0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 232
    #calls: Lcom/android/hwcamera/ComboPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/hwcamera/ComboPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 237
    :goto_0
    return-object p0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 212
    #calls: Lcom/android/hwcamera/ComboPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/hwcamera/ComboPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    :goto_0
    return-object p0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 222
    #calls: Lcom/android/hwcamera/ComboPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/hwcamera/ComboPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 227
    :goto_0
    return-object p0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 202
    #calls: Lcom/android/hwcamera/ComboPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/hwcamera/ComboPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    :goto_0
    return-object p0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    #calls: Lcom/android/hwcamera/ComboPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/hwcamera/ComboPreferences;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 259
    :goto_0
    return-object p0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    iget-object v0, p0, Lcom/android/hwcamera/ComboPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    return-object p0
.end method
