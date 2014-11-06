.class Lcom/huawei/hicloud/photosharesdk/database/DBConstants$DBInfo;
.super Ljava/lang/Object;
.source "DBConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/database/DBConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DBInfo"
.end annotation


# static fields
.field static final CREATE_TABLE_ID:Ljava/lang/String; = "(_id INTEGER primary key autoincrement, "

.field static final CREATE_TABLE_PREFIX:Ljava/lang/String; = "create table "

.field static final CREATE_TABLE_SUFFIX:Ljava/lang/String; = ");"

.field static final DATABASE_NAME:Ljava/lang/String; = "PhotoStream.db"

.field static final DATABASE_VERSION:I = 0x1

.field static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS "

.field static final UPGRADE_DB_EXCEPTION:Ljava/lang/String; = "Upgrade database is not support right now!"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
