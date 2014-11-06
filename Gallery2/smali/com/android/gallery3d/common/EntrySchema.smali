.class public final Lcom/android/gallery3d/common/EntrySchema;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    }
.end annotation


# static fields
.field private static final FULL_TEXT_INDEX_SUFFIX:Ljava/lang/String; = "_fulltext"

.field private static final SQLITE_TYPES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EntrySchema"

.field public static final TYPE_BLOB:I = 0x7

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_DOUBLE:I = 0x6

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_LONG:I = 0x4

.field public static final TYPE_SHORT:I = 0x2

.field public static final TYPE_STRING:I


# instance fields
.field private final mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

.field private final mHasFullTextIndex:Z

.field private final mProjection:[Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/common/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/gallery3d/common/Entry;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/gallery3d/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;)[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v1

    .line 53
    .local v1, columns:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/common/EntrySchema;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .line 57
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    .line 58
    .local v4, projection:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 59
    .local v2, hasFullTextIndex:Z
    if-eqz v1, :cond_1

    .line 60
    array-length v5, v1

    new-array v4, v5, [Ljava/lang/String;

    .line 61
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-eq v3, v5, :cond_1

    .line 62
    aget-object v0, v1, v3

    .line 63
    .local v0, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v5, v0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 64
    iget-boolean v5, v0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v5, :cond_0

    .line 65
    const/4 v2, 0x1

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v0           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v3           #i:I
    :cond_1
    iput-object v4, p0, Lcom/android/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    .line 71
    return-void
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 100
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    .local p2, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 475
    .local v10, fields:[Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v0, v10

    if-eq v11, v0, :cond_9

    .line 477
    aget-object v7, v10, v11

    .line 478
    .local v7, field:Ljava/lang/reflect/Field;
    const-class v0, Lcom/android/gallery3d/common/Entry$Column;

    invoke-interface {v7, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/common/Entry$Column;

    .line 479
    .local v12, info:Lcom/android/gallery3d/common/Entry$Column;
    if-nez v12, :cond_0

    .line 475
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 484
    .local v9, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/String;

    if-ne v9, v0, :cond_1

    .line 485
    const/4 v2, 0x0

    .line 506
    .local v2, type:I
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 507
    .local v8, index:I
    new-instance v0, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    invoke-interface {v12}, Lcom/android/gallery3d/common/Entry$Column;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lcom/android/gallery3d/common/Entry$Column;->indexed()Z

    move-result v3

    invoke-interface {v12}, Lcom/android/gallery3d/common/Entry$Column;->unique()Z

    move-result v4

    invoke-interface {v12}, Lcom/android/gallery3d/common/Entry$Column;->fullText()Z

    move-result v5

    invoke-interface {v12}, Lcom/android/gallery3d/common/Entry$Column;->defaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;-><init>(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/reflect/Field;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 486
    .end local v2           #type:I
    .end local v8           #index:I
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_2

    .line 487
    const/4 v2, 0x1

    .restart local v2       #type:I
    goto :goto_2

    .line 488
    .end local v2           #type:I
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_3

    .line 489
    const/4 v2, 0x2

    .restart local v2       #type:I
    goto :goto_2

    .line 490
    .end local v2           #type:I
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_4

    .line 491
    const/4 v2, 0x3

    .restart local v2       #type:I
    goto :goto_2

    .line 492
    .end local v2           #type:I
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_5

    .line 493
    const/4 v2, 0x4

    .restart local v2       #type:I
    goto :goto_2

    .line 494
    .end local v2           #type:I
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_6

    .line 495
    const/4 v2, 0x5

    .restart local v2       #type:I
    goto :goto_2

    .line 496
    .end local v2           #type:I
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v9, v0, :cond_7

    .line 497
    const/4 v2, 0x6

    .restart local v2       #type:I
    goto :goto_2

    .line 498
    .end local v2           #type:I
    :cond_7
    const-class v0, [B

    if-ne v9, v0, :cond_8

    .line 499
    const/4 v2, 0x7

    .restart local v2       #type:I
    goto :goto_2

    .line 501
    .end local v2           #type:I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field type for column: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    .end local v7           #field:Ljava/lang/reflect/Field;
    .end local v9           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v12           #info:Lcom/android/gallery3d/common/Entry$Column;
    :cond_9
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;)[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v1, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;>;"
    :goto_0
    if-eqz p1, :cond_0

    .line 462
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 463
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .line 468
    .local v0, columnList:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 469
    return-object v0
.end method

.method private parseTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-class v1, Lcom/android/gallery3d/common/Entry$Table;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/common/Entry$Table;

    .line 451
    .local v0, table:Lcom/android/gallery3d/common/Entry$Table;
    if-nez v0, :cond_0

    .line 452
    const/4 v1, 0x0

    .line 456
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/gallery3d/common/Entry$Table;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "field"
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 147
    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    .line 296
    iget-object v9, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 297
    .local v9, tableName:Ljava/lang/String;
    if-eqz v9, :cond_2

    const/4 v11, 0x1

    :goto_0
    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "CREATE TABLE "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .local v8, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v11, " (_id INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v10, unique:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_4

    aget-object v1, v0, v4

    .line 305
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->isId()Z

    move-result v11

    if-nez v11, :cond_1

    .line 306
    const/16 v11, 0x2c

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    iget-object v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const/16 v11, 0x20

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    sget-object v11, Lcom/android/gallery3d/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    iget v12, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    aget-object v11, v11, v12

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 311
    const-string v11, " DEFAULT "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_0
    iget-boolean v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->unique:Z

    if-eqz v11, :cond_1

    .line 315
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 316
    iget-object v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 297
    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #sql:Ljava/lang/StringBuilder;
    .end local v10           #unique:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 318
    .restart local v0       #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #sql:Ljava/lang/StringBuilder;
    .restart local v10       #unique:Ljava/lang/StringBuilder;
    :cond_3
    const/16 v11, 0x2c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 323
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 324
    const-string v11, ",UNIQUE("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x29

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :cond_5
    const-string v11, ");"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 328
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_7

    aget-object v1, v0, v4

    .line 333
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->indexed:Z

    if-eqz v11, :cond_6

    .line 334
    const-string v11, "CREATE INDEX "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v11, "_index_"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v11, " ON "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v11, " ("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v11, ");"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 344
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 331
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 348
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_7
    iget-boolean v11, p0, Lcom/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v11, :cond_e

    .line 350
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_fulltext"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, ftsTableName:Ljava/lang/String;
    const-string v11, "CREATE VIRTUAL TABLE "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v11, " USING FTS3 (_id INTEGER PRIMARY KEY"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_9

    aget-object v1, v0, v4

    .line 355
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v11, :cond_8

    .line 357
    iget-object v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 358
    .local v2, columnName:Ljava/lang/String;
    const/16 v11, 0x2c

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v11, " TEXT"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .end local v2           #columnName:Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 363
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_9
    const-string v11, ");"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 365
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "INSERT OR REPLACE INTO "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .local v5, insertSql:Ljava/lang/StringBuilder;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v11, " (_id"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_b

    aget-object v1, v0, v4

    .line 373
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v11, :cond_a

    .line 374
    const/16 v11, 0x2c

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    iget-object v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 378
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_b
    const-string v11, ") VALUES (new._id"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v7, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v7, :cond_d

    aget-object v1, v0, v4

    .line 380
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-boolean v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    if-eqz v11, :cond_c

    .line 381
    const-string v11, ",new."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v11, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 385
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_d
    const-string v11, ");"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, insertSqlString:Ljava/lang/String;
    const-string v11, "CREATE TRIGGER "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v11, "_insert_trigger AFTER INSERT ON "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v11, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v11, "END;"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 397
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 400
    const-string v11, "CREATE TRIGGER "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v11, "_update_trigger AFTER UPDATE ON "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v11, " FOR EACH ROW BEGIN "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v11, "END;"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 408
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 411
    const-string v11, "CREATE TRIGGER "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v11, "_delete_trigger AFTER DELETE ON "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v11, " FOR EACH ROW BEGIN DELETE FROM "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v11, " WHERE _id = old._id; END;"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 419
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 421
    .end local v3           #ftsTableName:Ljava/lang/String;
    .end local v5           #insertSql:Ljava/lang/StringBuilder;
    .end local v6           #insertSqlString:Ljava/lang/String;
    :cond_e
    return-void
.end method

.method public cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;
    .locals 12
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/gallery3d/common/Entry;",
            ">(",
            "Landroid/database/Cursor;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .local p2, object:Lcom/android/gallery3d/common/Entry;,"TT;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, v0, v5

    .line 106
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 107
    .local v2, columnIndex:I
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 108
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_0

    .line 105
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v8

    :goto_2
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 140
    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnIndex:I
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v3

    .line 141
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 110
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v2       #columnIndex:I
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_0
    :try_start_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 115
    :pswitch_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    if-ne v7, v9, :cond_1

    move v7, v9

    :goto_3
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    .line 118
    :pswitch_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_1

    .line 121
    :pswitch_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_1

    .line 124
    :pswitch_4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v4, p2, v10, v11}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_1

    .line 127
    :pswitch_5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto :goto_1

    .line 130
    :pswitch_6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-virtual {v4, p2, v10, v11}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto :goto_1

    .line 133
    :pswitch_7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v8

    :goto_4
    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_4

    .line 139
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnIndex:I
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_3
    return-object p2

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public deleteAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, sql:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 6
    .parameter "db"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 291
    iget-object v2, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    const/16 v3, 0x3b

    .line 424
    iget-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    .line 425
    .local v1, tableName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, sql:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 429
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 431
    iget-boolean v2, p0, Lcom/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v2, :cond_0

    .line 432
    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v2, "_fulltext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 439
    :cond_0
    return-void
.end method

.method public getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .locals 2
    .parameter "columnName"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/common/EntrySchema;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, index:I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "columnName"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 87
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    iget v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->projectionIndex:I

    .line 91
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :goto_1
    return v4

    .line 86
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getColumnInfo()[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J
    .locals 7
    .parameter "db"
    .parameter "entry"

    .prologue
    .line 280
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0, p2, v2}, Lcom/android/gallery3d/common/EntrySchema;->objectToValues(Lcom/android/gallery3d/common/Entry;Landroid/content/ContentValues;)V

    .line 282
    iget-wide v3, p2, Lcom/android/gallery3d/common/Entry;->id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 283
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    const-string v4, "_id"

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 286
    .local v0, id:J
    iput-wide v0, p2, Lcom/android/gallery3d/common/Entry;->id:J

    .line 287
    return-wide v0
.end method

.method public objectToValues(Lcom/android/gallery3d/common/Entry;Landroid/content/ContentValues;)V
    .locals 9
    .parameter "object"
    .parameter "values"

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 195
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 196
    .local v2, columnName:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 197
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_0

    .line 194
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 199
    :pswitch_0
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 224
    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v3

    .line 225
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 202
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v2       #columnName:Ljava/lang/String;
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :pswitch_1
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 205
    :pswitch_2
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_1

    .line 208
    :pswitch_3
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 211
    :pswitch_4
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 214
    :pswitch_5
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 217
    :pswitch_6
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 220
    :pswitch_7
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {p2, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 227
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_0
    return-void

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public queryAll(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 8
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithId(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/gallery3d/common/Entry;)Z
    .locals 10
    .parameter "db"
    .parameter "id"
    .parameter "entry"

    .prologue
    const/4 v5, 0x0

    .line 268
    iget-object v1, p0, Lcom/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/common/EntrySchema;->mProjection:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 270
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 271
    .local v9, success:Z
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0, v8, p4}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    .line 273
    const/4 v9, 0x1

    .line 275
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 276
    return v9
.end method

.method public toDebugString(Lcom/android/gallery3d/common/Entry;)Ljava/lang/String;
    .locals 12
    .parameter "entry"

    .prologue
    .line 231
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v9, "ID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v0, v5

    .line 234
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 235
    .local v2, columnName:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 236
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 237
    .local v8, value:Ljava/lang/Object;
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v8, :cond_0

    const-string v9, "null"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 240
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v8           #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 241
    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 242
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public varargs toDebugString(Lcom/android/gallery3d/common/Entry;[Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "entry"
    .parameter "columnNames"

    .prologue
    .line 248
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v9, "ID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p1, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 251
    .local v2, columnName:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/common/EntrySchema;->getColumn(Ljava/lang/String;)Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v1

    .line 252
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 253
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 254
    .local v8, value:Ljava/lang/Object;
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v8, :cond_0

    const-string v9, "null"

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 257
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v8           #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 258
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 259
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public valuesToObject(Landroid/content/ContentValues;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;
    .locals 8
    .parameter "values"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/gallery3d/common/Entry;",
            ">(",
            "Landroid/content/ContentValues;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, object:Lcom/android/gallery3d/common/Entry;,"TT;"
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;

    .local v0, arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 157
    .local v1, column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    iget-object v2, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 158
    .local v2, columnName:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 159
    .local v4, field:Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    packed-switch v7, :pswitch_data_0

    .line 156
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 161
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 187
    .end local v0           #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v3

    .line 188
    .local v3, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 164
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #arr$:[Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v1       #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .restart local v2       #columnName:Ljava/lang/String;
    .restart local v4       #field:Ljava/lang/reflect/Field;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :pswitch_1
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 167
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 170
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 173
    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 176
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 179
    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 182
    :pswitch_7
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v4, p2, v7}, Lcom/android/gallery3d/common/EntrySchema;->setIfNotNull(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 186
    .end local v1           #column:Lcom/android/gallery3d/common/EntrySchema$ColumnInfo;
    .end local v2           #columnName:Ljava/lang/String;
    .end local v4           #field:Ljava/lang/reflect/Field;
    :cond_0
    return-object p2

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
