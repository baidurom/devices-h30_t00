.class public Lcom/android/gallery3d/util/BlackList;
.super Ljava/lang/Object;
.source "BlackList.java"


# static fields
.field private static final DEFAULT_SKIP_LEN:I = 0x0

.field public static final FAIL:Z = false

.field public static final SUCC:Z = true

.field private static sCachedList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/gallery3d/util/BlackList;


# instance fields
.field private equalsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMountPoints:[Ljava/lang/String;

.field private startWithList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/gallery3d/util/BlackList;->sCachedList:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/util/BlackList;->startWithList:Ljava/util/ArrayList;

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/util/BlackList;->equalsList:Ljava/util/ArrayList;

    .line 27
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getVolumePaths()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/util/BlackList;->mMountPoints:[Ljava/lang/String;

    .line 30
    const/4 v5, 0x0

    .line 31
    .local v5, start:I
    const/4 v1, 0x0

    .line 32
    .local v1, end:I
    sget-object v0, Lcom/android/gallery3d/util/Prop4g;->sBlackListProp:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 34
    .local v4, line:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_1
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 40
    iget-object v6, p0, Lcom/android/gallery3d/util/BlackList;->startWithList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/util/BlackList;->equalsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    .end local v4           #line:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private changeFilePathToDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filePath"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/BlackList;->getSkipLengthFromPath(Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, skipLen:I
    const-string v4, "/"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 90
    .local v3, start:I
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 92
    .local v0, end:I
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, pathStr:Ljava/lang/String;
    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/android/gallery3d/util/BlackList;
    .locals 2

    .prologue
    .line 109
    const-class v1, Lcom/android/gallery3d/util/BlackList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/util/BlackList;->sInstance:Lcom/android/gallery3d/util/BlackList;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/gallery3d/util/BlackList;

    invoke-direct {v0}, Lcom/android/gallery3d/util/BlackList;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/BlackList;->sInstance:Lcom/android/gallery3d/util/BlackList;

    .line 112
    :cond_0
    sget-object v0, Lcom/android/gallery3d/util/BlackList;->sInstance:Lcom/android/gallery3d/util/BlackList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSkipLengthFromPath(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/util/BlackList;->mMountPoints:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 100
    .local v3, volumePath:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 104
    .end local v3           #volumePath:Ljava/lang/String;
    :goto_1
    return v4

    .line 99
    .restart local v3       #volumePath:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v3           #volumePath:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private matchFilePath(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v3

    .line 69
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/BlackList;->changeFilePathToDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, dir:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/gallery3d/util/BlackList;->equalsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, path:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 73
    goto :goto_0

    .line 77
    .end local v2           #path:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/util/BlackList;->startWithList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    .restart local v2       #path:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 79
    goto :goto_0
.end method


# virtual methods
.method public match(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 55
    sget-object v1, Lcom/android/gallery3d/util/BlackList;->sCachedList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/android/gallery3d/util/BlackList;->sCachedList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 59
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/BlackList;->matchFilePath(Ljava/lang/String;)Z

    move-result v0

    .line 58
    .local v0, match:Z
    sget-object v1, Lcom/android/gallery3d/util/BlackList;->sCachedList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
