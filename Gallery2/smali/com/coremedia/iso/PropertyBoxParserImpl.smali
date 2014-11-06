.class public Lcom/coremedia/iso/PropertyBoxParserImpl;
.super Lcom/coremedia/iso/AbstractBoxParser;
.source "PropertyBoxParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;
    }
.end annotation


# instance fields
.field mapping:Ljava/util/Properties;

.field p:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .parameter "mapping"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/coremedia/iso/AbstractBoxParser;-><init>()V

    .line 75
    const-string v0, "(.*)\\((.*?)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->p:Ljava/util/regex/Pattern;

    .line 72
    iput-object p1, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    .line 73
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 12
    .parameter "customProperties"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/coremedia/iso/AbstractBoxParser;-><init>()V

    .line 75
    const-string v9, "(.*)\\((.*?)\\)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    iput-object v9, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->p:Ljava/util/regex/Pattern;

    .line 39
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "/isoparser-default.properties"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    iput-object v9, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    iget-object v9, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    invoke-virtual {v9, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const-string v10, "isoparser-custom.properties"

    invoke-virtual {v9, v10}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    .line 46
    .local v4, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 47
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URL;

    .line 48
    .local v8, url:Ljava/net/URL;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    .local v1, customIS:Ljava/io/InputStream;
    :try_start_2
    iget-object v9, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    invoke-virtual {v9, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 58
    .end local v1           #customIS:Ljava/io/InputStream;
    .end local v4           #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v8           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 59
    .local v3, e:Ljava/io/IOException;
    :try_start_4
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 63
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 67
    :goto_1
    throw v9

    .line 52
    .restart local v1       #customIS:Ljava/io/InputStream;
    .restart local v4       #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v8       #url:Ljava/net/URL;
    :catchall_1
    move-exception v9

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v9

    .line 55
    .end local v1           #customIS:Ljava/io/InputStream;
    .end local v8           #url:Ljava/net/URL;
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v7, :cond_1

    aget-object v2, v0, v5

    .line 56
    .local v2, customProperty:Ljava/lang/String;
    iget-object v9, p0, Lcom/coremedia/iso/PropertyBoxParserImpl;->mapping:Ljava/util/Properties;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 55
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 63
    .end local v2           #customProperty:Ljava/lang/String;
    :cond_1
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 69
    :goto_3
    return-void

    .line 64
    :catch_1
    move-exception v3

    .line 65
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 64
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v5           #i$:I
    .end local v7           #len$:I
    :catch_2
    move-exception v3

    .line 65
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public createBox(Ljava/lang/String;[BLjava/lang/String;)Lcom/coremedia/iso/boxes/Box;
    .locals 12
    .parameter "type"
    .parameter "userType"
    .parameter "parent"

    .prologue
    .line 90
    new-instance v9, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;

    invoke-direct {v9, p0, p1, p2, p3}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;-><init>(Lcom/coremedia/iso/PropertyBoxParserImpl;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-virtual {v9}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->invoke()Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;

    move-result-object v6

    .line 91
    .local v6, fourCcToBox:Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;
    invoke-virtual {v6}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->getParam()[Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, param:[Ljava/lang/String;
    invoke-virtual {v6}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->getClazzName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, clazzName:Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 95
    const/4 v9, 0x0

    new-array v8, v9, [Ljava/lang/String;

    .line 97
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 99
    .local v0, clazz:Ljava/lang/Class;
    array-length v9, v8

    new-array v3, v9, [Ljava/lang/Class;

    .line 100
    .local v3, constructorArgsClazz:[Ljava/lang/Class;
    array-length v9, v8

    new-array v2, v9, [Ljava/lang/Object;

    .line 101
    .local v2, constructorArgs:[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v9, v8

    if-ge v7, v9, :cond_4

    .line 103
    const-string v9, "userType"

    aget-object v10, v8, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 104
    aput-object p2, v2, v7

    .line 105
    const-class v9, [B

    aput-object v9, v3, v7

    .line 101
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const-string v9, "type"

    aget-object v10, v8, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 107
    aput-object p1, v2, v7

    .line 108
    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v2           #constructorArgs:[Ljava/lang/Object;
    .end local v3           #constructorArgsClazz:[Ljava/lang/Class;
    .end local v7           #i:I
    :catch_0
    move-exception v5

    .line 139
    .local v5, e:Ljava/lang/ClassNotFoundException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 109
    .end local v5           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #clazz:Ljava/lang/Class;
    .restart local v2       #constructorArgs:[Ljava/lang/Object;
    .restart local v3       #constructorArgsClazz:[Ljava/lang/Class;
    .restart local v7       #i:I
    :cond_2
    :try_start_1
    const-string v9, "parent"

    aget-object v10, v8, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 110
    aput-object p3, v2, v7

    .line 111
    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v7

    goto :goto_1

    .line 113
    :cond_3
    new-instance v9, Ljava/lang/InternalError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No such param: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :cond_4
    :try_start_2
    array-length v9, v8

    if-lez v9, :cond_5

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 126
    .local v4, constructorObject:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/googlecode/mp4parser/AbstractBox;>;"
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/Box;

    return-object v9

    .line 123
    .end local v4           #constructorObject:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/googlecode/mp4parser/AbstractBox;>;"
    :cond_5
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .restart local v4       #constructorObject:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/googlecode/mp4parser/AbstractBox;>;"
    goto :goto_2

    .line 127
    .end local v4           #constructorObject:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/googlecode/mp4parser/AbstractBox;>;"
    :catch_1
    move-exception v5

    .line 128
    .local v5, e:Ljava/lang/NoSuchMethodException;
    :try_start_3
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 129
    .end local v5           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v5

    .line 130
    .local v5, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 131
    .end local v5           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v5

    .line 132
    .local v5, e:Ljava/lang/InstantiationException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 133
    .end local v5           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v5

    .line 134
    .local v5, e:Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public getClassForFourCc(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "type"
    .parameter "userType"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v2, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;-><init>(Lcom/coremedia/iso/PropertyBoxParserImpl;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-virtual {v2}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->invoke()Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;

    move-result-object v1

    .line 81
    .local v1, fourCcToBox:Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;
    :try_start_0
    #getter for: Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->clazzName:Ljava/lang/String;
    invoke-static {v1}, Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;->access$000(Lcom/coremedia/iso/PropertyBoxParserImpl$FourCcToBox;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
