.class public Lcom/morpho/utils/io/FileOperator;
.super Ljava/lang/Object;
.source "FileOperator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 31
    const/4 v8, 0x0

    .line 33
    .local v8, result:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v9, v8

    .line 68
    .end local v8           #result:Z
    .local v9, result:I
    :goto_0
    return v9

    .line 37
    .end local v9           #result:I
    .restart local v8       #result:Z
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v10, src:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v6, dst:Ljava/io/File;
    const/4 v0, 0x0

    .line 41
    .local v0, srcChannel:Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 44
    .local v5, dstChannel:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 48
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 50
    const/4 v8, 0x1

    .line 61
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 62
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    move v9, v8

    .line 68
    .restart local v9       #result:I
    goto :goto_0

    .line 63
    .end local v9           #result:I
    :catch_0
    move-exception v7

    .line 64
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 52
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 53
    .local v7, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 62
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_5
    :goto_2
    move v9, v8

    .line 65
    .restart local v9       #result:I
    goto :goto_0

    .line 63
    .end local v9           #result:I
    .restart local v7       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 64
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 55
    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 56
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    if-eqz v0, :cond_6

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 62
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_7
    :goto_3
    move v9, v8

    .line 65
    .restart local v9       #result:I
    goto :goto_0

    .line 63
    .end local v9           #result:I
    :catch_4
    move-exception v7

    .line 64
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 59
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 61
    if-eqz v0, :cond_8

    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 62
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 65
    :cond_9
    :goto_4
    throw v1

    .line 63
    :catch_5
    move-exception v7

    .line 64
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, result:Z
    if-eqz p0, :cond_0

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 106
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return v1
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static outputData(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 6
    .parameter "data"
    .parameter "path"

    .prologue
    .line 131
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 133
    .local v2, o_stream:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 135
    .local v4, outChannel:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 136
    .end local v2           #o_stream:Ljava/io/FileOutputStream;
    .local v3, o_stream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 137
    invoke-virtual {v4, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 144
    if-eqz v4, :cond_0

    .line 145
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 151
    .end local v3           #o_stream:Ljava/io/FileOutputStream;
    .restart local v2       #o_stream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 147
    .end local v2           #o_stream:Ljava/io/FileOutputStream;
    .restart local v3       #o_stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 150
    .end local v3           #o_stream:Ljava/io/FileOutputStream;
    .restart local v2       #o_stream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    if-eqz v4, :cond_1

    .line 145
    :try_start_4
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 147
    :catch_2
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 141
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 144
    if-eqz v4, :cond_1

    .line 145
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 147
    :catch_4
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 144
    :goto_3
    if-eqz v4, :cond_2

    .line 145
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 149
    :cond_2
    :goto_4
    throw v5

    .line 147
    :catch_5
    move-exception v0

    .line 148
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 143
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #o_stream:Ljava/io/FileOutputStream;
    .restart local v3       #o_stream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #o_stream:Ljava/io/FileOutputStream;
    .restart local v2       #o_stream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 140
    .end local v2           #o_stream:Ljava/io/FileOutputStream;
    .restart local v3       #o_stream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #o_stream:Ljava/io/FileOutputStream;
    .restart local v2       #o_stream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 138
    .end local v2           #o_stream:Ljava/io/FileOutputStream;
    .restart local v3       #o_stream:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #o_stream:Ljava/io/FileOutputStream;
    .restart local v2       #o_stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static outputData([BLjava/lang/String;)V
    .locals 5
    .parameter "data"
    .parameter "path"

    .prologue
    .line 110
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 113
    .local v2, o_stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 114
    .end local v2           #o_stream:Ljava/io/FileOutputStream;
    .local v3, o_stream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 121
    if-eqz v3, :cond_0

    .line 122
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 128
    .end local v3           #o_stream:Ljava/io/FileOutputStream;
    .restart local v2       #o_stream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 124
    .end local v2           #o_stream:Ljava/io/FileOutputStream;
    .restart local v3       #o_stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 127
    .end local v3           #o_stream:Ljava/io/FileOutputStream;
    .restart local v2       #o_stream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 115
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 116
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    if-eqz v2, :cond_1

    .line 122
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 124
    :catch_2
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 118
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    if-eqz v2, :cond_1

    .line 122
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 124
    :catch_4
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 121
    :goto_3
    if-eqz v2, :cond_2

    .line 122
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 126
    :cond_2
    :goto_4
    throw v4

    .line 124
    :catch_5
    move-exception v0

    .line 125
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 120
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #o_stream:Ljava/io/FileOutputStream;
    .restart local v3       #o_stream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #o_stream:Ljava/io/FileOutputStream;
    .restart local v2       #o_stream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 117
    .end local v2           #o_stream:Ljava/io/FileOutputStream;
    .restart local v3       #o_stream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #o_stream:Ljava/io/FileOutputStream;
    .restart local v2       #o_stream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 115
    .end local v2           #o_stream:Ljava/io/FileOutputStream;
    .restart local v3       #o_stream:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #o_stream:Ljava/io/FileOutputStream;
    .restart local v2       #o_stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static read(Ljava/lang/String;)[B
    .locals 8
    .parameter "path"

    .prologue
    .line 154
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    .line 156
    .local v5, size:I
    new-array v0, v5, [B

    .line 157
    .local v0, buf:[B
    const/4 v3, 0x0

    .line 159
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 160
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 167
    if-eqz v4, :cond_0

    .line 168
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 174
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-object v0

    .line 170
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 173
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 161
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 162
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    if-eqz v3, :cond_1

    .line 168
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 170
    :catch_2
    move-exception v1

    .line 171
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 164
    .restart local v1       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    if-eqz v3, :cond_1

    .line 168
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 170
    :catch_4
    move-exception v1

    .line 171
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 167
    :goto_3
    if-eqz v3, :cond_2

    .line 168
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 172
    :cond_2
    :goto_4
    throw v6

    .line 170
    :catch_5
    move-exception v1

    .line 171
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 166
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 163
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 161
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, result:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v1

    .line 89
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 82
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, src:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, dst:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    :cond_2
    move v2, v1

    .line 89
    .restart local v2       #result:I
    goto :goto_0
.end method
