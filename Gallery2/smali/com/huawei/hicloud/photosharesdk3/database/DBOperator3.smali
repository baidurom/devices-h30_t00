.class abstract Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;
.super Lcom/huawei/hicloud/photosharesdk/database/DBOperator;
.source "DBOperator3.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/huawei/hicloud/photosharesdk/database/DBOperator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    .local p0, this:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<TT;>;"
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBOperator;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 24
    .local p0, this:Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;,"Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3<TT;>;"
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/database/DBOperator3;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
