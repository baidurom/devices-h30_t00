.class public Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirHelpUtil"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil$SwitchHelperUtil;
    }
.end annotation


# static fields
.field private static final ABBR_SIZE_X:Ljava/lang/String; = "DirHelpUtilabbr_size_x"

.field private static final ABBR_SIZE_Y:Ljava/lang/String; = "DirHelpUtilabbr_size_y"

.field private static final BASE_DIR:Ljava/lang/String; = "DirHelpUtilbaseDir"

.field private static final BASE_DIR_OLD:Ljava/lang/String; = "DirHelpUtilbaseDir_old"

.field private static final BIG_SIZE_X:Ljava/lang/String; = "DirHelpUtilbig_size_x"

.field private static final BIG_SIZE_Y:Ljava/lang/String; = "DirHelpUtilbig_size_y"

.field private static final MAX_STORAGE:Ljava/lang/String; = "DirHelpUtilmaxStorage"

.field private static final TAG:Ljava/lang/String; = "DirHelpUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDirInfoInFile(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 228
    .line 229
    const-string v2, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 230
    .local v1, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DirHelpUtilabbr_size_x"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    const-string v2, "DirHelpUtilabbr_size_y"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    const-string v2, "DirHelpUtilbaseDir"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    const-string v2, "DirHelpUtilbaseDir_old"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    const-string v2, "DirHelpUtilbig_size_x"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    const-string v2, "DirHelpUtilbig_size_y"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    const-string v2, "DirHelpUtilmaxStorage"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    return-void
.end method

.method public static readDirInfoFromFile(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 176
    .line 177
    const-string v6, "com.huawei.hicloud.photosharesdk.SETTING"

    .line 176
    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 178
    .local v4, spreferences:Landroid/content/SharedPreferences;
    const-string v6, "DirHelpUtilbaseDir"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, baseDir:Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v3, v5

    .line 194
    :goto_0
    return-object v3

    .line 182
    :cond_0
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;-><init>()V

    .line 183
    .local v3, dirInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;
    invoke-virtual {v3, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->setBaseDir(Ljava/lang/String;)V

    .line 184
    const-string v6, "DirHelpUtilbaseDir_old"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->setBaseDir_old(Ljava/lang/String;)V

    .line 185
    const-string v5, "DirHelpUtilmaxStorage"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->setMaxStorage(I)V

    .line 186
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;-><init>()V

    .line 187
    .local v0, abbr_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    const-string v5, "DirHelpUtilabbr_size_x"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->setWidth(I)V

    .line 188
    const-string v5, "DirHelpUtilabbr_size_y"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->setHeight(I)V

    .line 189
    invoke-virtual {v3, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->setAbbr_size(Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;)V

    .line 190
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;-><init>()V

    .line 191
    .local v2, big_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    const-string v5, "DirHelpUtilbig_size_x"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->setWidth(I)V

    .line 192
    const-string v5, "DirHelpUtilbig_size_y"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->setHeight(I)V

    .line 193
    invoke-virtual {v3, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->setBig_size(Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;)V

    goto :goto_0
.end method

.method public static writeDirInfoToFile(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;)V
    .locals 9
    .parameter "context"
    .parameter "dirInfo"

    .prologue
    .line 198
    .line 199
    const-string v5, "com.huawei.hicloud.photosharesdk.SETTING"

    const/4 v6, 0x0

    .line 198
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 200
    .local v4, spreferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 203
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "DirHelpUtilbaseDir"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, baseDir:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "writeDirInfoToFile dirInfo.getBaseDir():"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 206
    const-string v8, "baseDir:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",dirInfo.getBaseDir_old():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir_old()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 205
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    const-string v5, "DirHelpUtilbaseDir_old"

    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    :cond_0
    const-string v5, "DirHelpUtilbaseDir"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    const-string v5, "DirHelpUtilmaxStorage"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getMaxStorage()I

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getAbbr_size()Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    move-result-object v0

    .line 215
    .local v0, abbr_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    if-eqz v0, :cond_1

    .line 216
    const-string v5, "DirHelpUtilabbr_size_x"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getWidth()I

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    const-string v5, "DirHelpUtilabbr_size_y"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getHeight()I

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBig_size()Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    move-result-object v2

    .line 220
    .local v2, big_size:Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;
    if-eqz v2, :cond_2

    .line 221
    const-string v5, "DirHelpUtilbig_size_x"

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getWidth()I

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string v5, "DirHelpUtilbig_size_y"

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getHeight()I

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    return-void
.end method
