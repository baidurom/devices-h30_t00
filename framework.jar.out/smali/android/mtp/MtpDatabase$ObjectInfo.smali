.class Landroid/mtp/MtpDatabase$ObjectInfo;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectInfo"
.end annotation


# instance fields
.field public Data:Ljava/lang/String;

.field public DateModified:J

.field public Format:I

.field public Parent:I

.field public Size:J

.field public StorageId:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;JJ)V
    .locals 0
    .parameter "storageId"
    .parameter "format"
    .parameter "parent"
    .parameter "data"
    .parameter "size"
    .parameter "dateModified"

    .prologue
    .line 1475
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1476
    iput p1, p0, Landroid/mtp/MtpDatabase$ObjectInfo;->StorageId:I

    .line 1477
    iput p2, p0, Landroid/mtp/MtpDatabase$ObjectInfo;->Format:I

    .line 1478
    iput p3, p0, Landroid/mtp/MtpDatabase$ObjectInfo;->Parent:I

    .line 1479
    iput-object p4, p0, Landroid/mtp/MtpDatabase$ObjectInfo;->Data:Ljava/lang/String;

    .line 1480
    iput-wide p5, p0, Landroid/mtp/MtpDatabase$ObjectInfo;->Size:J

    .line 1481
    iput-wide p7, p0, Landroid/mtp/MtpDatabase$ObjectInfo;->DateModified:J

    .line 1482
    return-void
.end method
