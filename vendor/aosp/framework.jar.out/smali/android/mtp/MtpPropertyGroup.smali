.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final DEPTH_DATA_WHERE:Ljava/lang/String; = "_data"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_DEPTH_DATA_WHERE:Ljava/lang/String; = "_id=? AND _data"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private mPathHandelDepthQuery:Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V
    .locals 5
    .parameter "database"
    .parameter "provider"
    .parameter "volume"
    .parameter "properties"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 84
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 85
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 86
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 88
    array-length v1, p4

    .line 89
    .local v1, count:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v0, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const-string/jumbo v3, "media_type"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 97
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 98
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p4, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 101
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 102
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 103
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .parameter "code"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 111
    .local v0, column:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, type:I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createProperty: code = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 204
    :goto_1
    return-object v2

    .line 113
    .end local v1           #type:I
    :sswitch_0
    const-string/jumbo v0, "storage_id"

    .line 114
    const/4 v1, 0x6

    .line 115
    .restart local v1       #type:I
    goto :goto_0

    .line 117
    .end local v1           #type:I
    :sswitch_1
    const-string v0, "format"

    .line 118
    const/4 v1, 0x4

    .line 119
    .restart local v1       #type:I
    goto :goto_0

    .line 122
    .end local v1           #type:I
    :sswitch_2
    const/4 v1, 0x4

    .line 123
    .restart local v1       #type:I
    goto :goto_0

    .line 125
    .end local v1           #type:I
    :sswitch_3
    const-string v0, "_size"

    .line 126
    const/16 v1, 0x8

    .line 127
    .restart local v1       #type:I
    goto :goto_0

    .line 129
    .end local v1           #type:I
    :sswitch_4
    const-string v0, "_data"

    .line 130
    const v1, 0xffff

    .line 131
    .restart local v1       #type:I
    goto :goto_0

    .line 133
    .end local v1           #type:I
    :sswitch_5
    const-string/jumbo v0, "title"

    .line 134
    const v1, 0xffff

    .line 135
    .restart local v1       #type:I
    goto :goto_0

    .line 137
    .end local v1           #type:I
    :sswitch_6
    const-string v0, "date_modified"

    .line 138
    const v1, 0xffff

    .line 139
    .restart local v1       #type:I
    goto :goto_0

    .line 141
    .end local v1           #type:I
    :sswitch_7
    const-string v0, "date_added"

    .line 142
    const v1, 0xffff

    .line 143
    .restart local v1       #type:I
    goto :goto_0

    .line 145
    .end local v1           #type:I
    :sswitch_8
    const-string/jumbo v0, "year"

    .line 146
    const v1, 0xffff

    .line 147
    .restart local v1       #type:I
    goto :goto_0

    .line 149
    .end local v1           #type:I
    :sswitch_9
    const-string/jumbo v0, "parent"

    .line 150
    const/4 v1, 0x6

    .line 151
    .restart local v1       #type:I
    goto :goto_0

    .line 154
    .end local v1           #type:I
    :sswitch_a
    const-string/jumbo v0, "storage_id"

    .line 155
    const/16 v1, 0xa

    .line 156
    .restart local v1       #type:I
    goto :goto_0

    .line 158
    .end local v1           #type:I
    :sswitch_b
    const-string v0, "duration"

    .line 159
    const/4 v1, 0x6

    .line 160
    .restart local v1       #type:I
    goto :goto_0

    .line 162
    .end local v1           #type:I
    :sswitch_c
    const-string/jumbo v0, "track"

    .line 163
    const/4 v1, 0x4

    .line 164
    .restart local v1       #type:I
    goto :goto_0

    .line 166
    .end local v1           #type:I
    :sswitch_d
    const-string v0, "_display_name"

    .line 167
    const v1, 0xffff

    .line 168
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 170
    .end local v1           #type:I
    :sswitch_e
    const v1, 0xffff

    .line 171
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 173
    .end local v1           #type:I
    :sswitch_f
    const v1, 0xffff

    .line 174
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 176
    .end local v1           #type:I
    :sswitch_10
    const-string v0, "album_artist"

    .line 177
    const v1, 0xffff

    .line 178
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 181
    .end local v1           #type:I
    :sswitch_11
    const v1, 0xffff

    .line 182
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 184
    .end local v1           #type:I
    :sswitch_12
    const-string v0, "composer"

    .line 185
    const v1, 0xffff

    .line 186
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 188
    .end local v1           #type:I
    :sswitch_13
    const-string v0, "description"

    .line 189
    const v1, 0xffff

    .line 190
    .restart local v1       #type:I
    goto/16 :goto_0

    .line 204
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto :goto_1

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_a
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_e
        0xdc48 -> :sswitch_13
        0xdc4e -> :sswitch_7
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_c
        0xdc8c -> :sswitch_11
        0xdc96 -> :sswitch_12
        0xdc99 -> :sswitch_8
        0xdc9a -> :sswitch_f
        0xdc9b -> :sswitch_10
        0xdce0 -> :sswitch_d
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private getFilePathWithHandle(I)Z
    .locals 10
    .parameter "handle"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 583
    const-string v0, "MtpPropertyGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePathWithHandle handle = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "_data"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v1, "_size"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "format"

    aput-object v1, v2, v0

    .line 591
    .local v2, PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 593
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 595
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mPathHandelDepthQuery:Ljava/lang/String;

    .line 598
    const-string v0, "MtpPropertyGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePathWithHandle mPathHandelDepthQuery = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mPathHandelDepthQuery:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v0, "MtpPropertyGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePathWithHandle mPathHandelDepthQuery.length = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mPathHandelDepthQuery:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    if-eqz v7, :cond_0

    .line 611
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 613
    :cond_0
    :goto_0
    return v9

    .line 610
    :cond_1
    if-eqz v7, :cond_0

    .line 611
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 606
    :catch_0
    move-exception v8

    .line 607
    .local v8, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpPropertyGroup"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    if-eqz v7, :cond_0

    .line 611
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 610
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 611
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, start:I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 294
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 295
    add-int/lit8 v2, v1, 0x1

    .line 297
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 298
    .local v0, end:I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 299
    add-int/lit16 v0, v2, 0xff

    .line 301
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v9, 0x0

    .line 230
    const/4 v7, 0x0

    .line 232
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 235
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    if-eqz v7, :cond_0

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    if-eqz v7, :cond_0

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 240
    :catch_0
    move-exception v8

    .line 243
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_2

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    goto :goto_0

    .line 243
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 250
    const/4 v7, 0x0

    .line 252
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 253
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 256
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    if-eqz v7, :cond_0

    .line 266
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 259
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    if-eqz v7, :cond_0

    .line 266
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 261
    .end local v1           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 262
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v2, "queryGenre exception"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    if-eqz v7, :cond_2

    .line 266
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    goto :goto_0

    .line 265
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 266
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 9
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 272
    const/4 v7, 0x0

    .line 275
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 278
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    if-eqz v7, :cond_0

    .line 284
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    if-eqz v7, :cond_2

    .line 284
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v8

    .line 287
    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 283
    if-eqz v7, :cond_2

    .line 284
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 283
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 284
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v9, 0x0

    .line 209
    const/4 v7, 0x0

    .line 212
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 215
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    if-eqz v7, :cond_0

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    if-eqz v7, :cond_0

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 220
    :catch_0
    move-exception v8

    .line 223
    .local v8, e:Ljava/lang/Exception;
    if-eqz v7, :cond_2

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    goto :goto_0

    .line 223
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 34
    .parameter "handle"
    .parameter "format"
    .parameter "depth"

    .prologue
    .line 305
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v2, 0x1

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    .line 309
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const v3, 0xa808

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 575
    :cond_0
    :goto_0
    return-object v7

    .line 314
    :cond_1
    if-nez p2, :cond_6

    .line 315
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 317
    const/4 v5, 0x0

    .line 318
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 410
    .local v6, whereArgs:[Ljava/lang/String;
    :goto_1
    const/16 v19, 0x0

    .line 413
    .local v19, c:Landroid/database/Cursor;
    if-gtz p3, :cond_2

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 415
    :cond_2
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", don\'t query if not necessary!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v19

    .line 417
    if-nez v19, :cond_b

    .line 418
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    if-eqz v19, :cond_0

    .line 575
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 321
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_3
    if-nez p1, :cond_4

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 323
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", select all object!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v5, 0x0

    .line 325
    .restart local v5       #where:Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 328
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 329
    .restart local v6       #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 330
    const-string/jumbo v5, "parent=?"

    .restart local v5       #where:Ljava/lang/String;
    goto/16 :goto_1

    .line 376
    .end local v5           #where:Ljava/lang/String;
    :cond_5
    const-string v5, "_id=?"

    .restart local v5       #where:Ljava/lang/String;
    goto/16 :goto_1

    .line 383
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :cond_6
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 385
    const-string v5, "format=?"

    .line 386
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 389
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :cond_7
    if-nez p1, :cond_8

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_8

    .line 391
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", select all object with given format!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 p1, -0x1

    .line 394
    const-string v5, "format=?"

    .line 395
    .restart local v5       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 398
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 399
    .restart local v6       #whereArgs:[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    .line 400
    const-string/jumbo v5, "parent=? AND format=?"

    .restart local v5       #where:Ljava/lang/String;
    goto/16 :goto_1

    .line 402
    .end local v5           #where:Ljava/lang/String;
    :cond_9
    const-string v5, "_id=? AND format=?"

    .restart local v5       #where:Ljava/lang/String;
    goto/16 :goto_1

    .line 424
    .restart local v19       #c:Landroid/database/Cursor;
    :cond_a
    if-gez p3, :cond_b

    if-lez p1, :cond_b

    .line 425
    :try_start_1
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", depth < 0 && handle > 0!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v19

    .line 427
    if-nez v19, :cond_b

    .line 428
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 574
    if-eqz v19, :cond_0

    .line 575
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 433
    :cond_b
    if-nez v19, :cond_d

    const/16 v21, 0x1

    .line 434
    .local v21, count:I
    :goto_2
    :try_start_2
    new-instance v7, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    mul-int v2, v2, v21

    const/16 v3, 0x2001

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 438
    .local v7, result:Landroid/mtp/MtpPropertyList;
    const/16 v28, 0x0

    .local v28, objectIndex:I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, v21

    if-ge v0, v1, :cond_1b

    .line 440
    const/16 v25, 0x0

    .line 441
    .local v25, isAudio:Z
    if-eqz v19, :cond_c

    .line 442
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    .line 443
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 p1, v0

    .line 445
    const-string/jumbo v2, "media_type"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 446
    .local v26, mediaType:I
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_e

    const/16 v25, 0x1

    .line 450
    .end local v26           #mediaType:I
    :cond_c
    :goto_4
    const/16 v30, 0x0

    .local v30, propertyIndex:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    move/from16 v0, v30

    if-ge v0, v2, :cond_1a

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v29, v2, v30

    .line 452
    .local v29, property:Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v29

    iget v9, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 453
    .local v9, propertyCode:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v20, v0

    .line 456
    .local v20, column:I
    sparse-switch v9, :sswitch_data_0

    .line 557
    move-object/from16 v0, v29

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v3, 0xffff

    if-ne v2, v3, :cond_18

    .line 558
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 450
    :goto_6
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .line 433
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v21           #count:I
    .end local v25           #isAudio:Z
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    :cond_d
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v21

    goto :goto_2

    .line 446
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v21       #count:I
    .restart local v25       #isAudio:Z
    .restart local v26       #mediaType:I
    .restart local v28       #objectIndex:I
    :cond_e
    const/16 v25, 0x0

    goto :goto_4

    .line 459
    .end local v26           #mediaType:I
    .restart local v9       #propertyCode:I
    .restart local v20       #column:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    :sswitch_0
    const/4 v10, 0x4

    const-wide/16 v11, 0x0

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 571
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v21           #count:I
    .end local v25           #isAudio:Z
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    :catch_0
    move-exception v23

    .line 572
    .local v23, e:Landroid/os/RemoteException;
    :try_start_3
    new-instance v7, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v7, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 574
    if-eqz v19, :cond_0

    .line 575
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 463
    .end local v23           #e:Landroid/os/RemoteException;
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v9       #propertyCode:I
    .restart local v20       #column:I
    .restart local v21       #count:I
    .restart local v25       #isAudio:Z
    .restart local v28       #objectIndex:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    :sswitch_1
    :try_start_4
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 464
    .local v32, value:Ljava/lang/String;
    if-eqz v32, :cond_10

    .line 465
    invoke-static/range {v32 .. v32}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 574
    .end local v7           #result:Landroid/mtp/MtpPropertyList;
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v21           #count:I
    .end local v25           #isAudio:Z
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    .end local v32           #value:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_f

    .line 575
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v2

    .line 467
    .restart local v7       #result:Landroid/mtp/MtpPropertyList;
    .restart local v9       #propertyCode:I
    .restart local v20       #column:I
    .restart local v21       #count:I
    .restart local v25       #isAudio:Z
    .restart local v28       #objectIndex:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    .restart local v32       #value:Ljava/lang/String;
    :cond_10
    const/16 v2, 0x2009

    :try_start_5
    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_6

    .line 472
    .end local v32           #value:Ljava/lang/String;
    :sswitch_2
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 474
    .local v27, name:Ljava/lang/String;
    if-nez v27, :cond_11

    .line 475
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 478
    :cond_11
    if-nez v27, :cond_12

    .line 479
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 480
    if-eqz v27, :cond_12

    .line 481
    invoke-static/range {v27 .. v27}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 484
    :cond_12
    if-eqz v27, :cond_13

    .line 485
    move/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_6

    .line 487
    :cond_13
    const/16 v2, 0x2009

    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_6

    .line 494
    .end local v27           #name:Ljava/lang/String;
    :sswitch_3
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 495
    .local v31, seconds:I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyList handle: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", c.getInt(column) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 501
    .end local v31           #seconds:I
    :sswitch_4
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 504
    .local v33, year:I
    const-string v22, "00000101T000000"

    .line 506
    .local v22, dateTime:Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 510
    .end local v22           #dateTime:Ljava/lang/String;
    .end local v33           #year:I
    :sswitch_5
    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 511
    .local v11, puid:J
    const/16 v2, 0x20

    shl-long/2addr v11, v2

    .line 512
    move/from16 v0, p1

    int-to-long v2, v0

    add-long/2addr v11, v2

    .line 513
    const/16 v10, 0xa

    move/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_6

    .line 516
    .end local v11           #puid:J
    :sswitch_6
    const/16 v16, 0x4

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v17, v0

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_6

    .line 522
    :sswitch_7
    if-eqz v25, :cond_14

    .line 523
    const-string v2, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 526
    :cond_14
    const-string v2, ""

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 534
    :sswitch_8
    if-eqz v25, :cond_15

    .line 535
    const-string v2, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 538
    :cond_15
    const-string v2, ""

    move/from16 v0, p1

    invoke-virtual {v7, v0, v9, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 545
    :sswitch_9
    const-string v24, ""

    .line 546
    .local v24, genre:Ljava/lang/String;
    if-eqz v25, :cond_16

    .line 547
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v24

    .line 550
    :cond_16
    if-eqz v24, :cond_17

    .line 551
    move/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v9, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 553
    :cond_17
    const/16 v2, 0x2009

    invoke-virtual {v7, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_6

    .line 559
    .end local v24           #genre:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v29

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v2, :cond_19

    .line 560
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v16, v0

    const-wide/16 v17, 0x0

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_6

    .line 562
    :cond_19
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v16, v0

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-object v13, v7

    move/from16 v14, p1

    move v15, v9

    invoke-virtual/range {v13 .. v18}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_6

    .line 438
    .end local v9           #propertyCode:I
    .end local v20           #column:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    :cond_1a
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3

    .line 574
    .end local v25           #isAudio:Z
    .end local v30           #propertyIndex:I
    :cond_1b
    if-eqz v19, :cond_0

    .line 575
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 456
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc03 -> :sswitch_0
        0xdc07 -> :sswitch_1
        0xdc09 -> :sswitch_3
        0xdc41 -> :sswitch_5
        0xdc44 -> :sswitch_2
        0xdc46 -> :sswitch_7
        0xdc4e -> :sswitch_3
        0xdc8b -> :sswitch_6
        0xdc8c -> :sswitch_9
        0xdc99 -> :sswitch_4
        0xdc9a -> :sswitch_8
    .end sparse-switch
.end method
