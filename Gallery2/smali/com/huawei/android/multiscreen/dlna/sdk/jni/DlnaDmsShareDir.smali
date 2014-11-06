.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
.super Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
.source "DlnaDmsShareDir.java"


# static fields
.field public static final ADD_SHARE_FLAG:I = 0x1

.field public static final ALL_SHARE_FLAG:I = 0x1

.field public static final NO_SHARE_FLAG:I = -0x1

.field public static final PART_SHARE_FLAG:I

.field public static final REMOVE_SHARE_FLAG:I


# instance fields
.field private allOrPartFlag:I

.field private fileCount:I

.field private mapShareFiles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;",
            ">;"
        }
    .end annotation
.end field

.field private operateFlag:I

.field private shareFiles:[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "mPath"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->mapShareFiles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->allOrPartFlag:I

    .line 26
    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V
    .locals 1
    .parameter "name"
    .parameter "file"

    .prologue
    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 128
    invoke-virtual {p2, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->setParentDir(Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;)V

    .line 129
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    return-void
.end method

.method public buildShareFiles()V
    .locals 5

    .prologue
    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v2, fileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;"
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->mapShareFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 176
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 184
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    invoke-virtual {p0, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->setShareFiles([Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    .line 185
    return-void

    .line 177
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 178
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    .line 179
    .local v1, file:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->clear()V

    .line 162
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 170
    return-void

    .line 165
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    .locals 5

    .prologue
    .line 142
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, dir:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;
    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->operateFlag:I

    iput v3, v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->operateFlag:I

    .line 144
    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->allOrPartFlag:I

    iput v3, v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->allOrPartFlag:I

    .line 145
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 146
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    return-object v0

    .line 148
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;->clone()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->addChild(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->clone()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;

    move-result-object v0

    return-object v0
.end method

.method public getAllOrPartFlag()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->allOrPartFlag:I

    return v0
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->fileCount:I

    return v0
.end method

.method public getMapShareFiles()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->mapShareFiles:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getOperateFlag()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->operateFlag:I

    return v0
.end method

.method public getShareFiles()[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->shareFiles:[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public setAllOrPartFlag(I)V
    .locals 0
    .parameter "allOrPartFlag"

    .prologue
    .line 87
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->allOrPartFlag:I

    .line 88
    return-void
.end method

.method public setFileCount(I)V
    .locals 0
    .parameter "fileCount"

    .prologue
    .line 105
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->fileCount:I

    .line 106
    return-void
.end method

.method public setMapShareFiles(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, mapShareFiles:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;>;"
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->mapShareFiles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    return-void
.end method

.method public setOperateFlag(I)V
    .locals 0
    .parameter "operateFlag"

    .prologue
    .line 79
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->operateFlag:I

    .line 80
    return-void
.end method

.method public setShareFiles([Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;)V
    .locals 1
    .parameter "shareFiles"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->shareFiles:[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareFile;

    .line 97
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaDmsShareDir;->fileCount:I

    .line 98
    return-void

    .line 97
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method
