.class Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;
.super Ljava/lang/Object;
.source "PersonManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/PersonManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersonNameSortKey"
.end annotation


# instance fields
.field mIsPrivate:Z

.field mName:Ljava/lang/String;

.field mSortKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "sortKey"
    .parameter "isPrivate"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;->mName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;->mSortKey:Ljava/lang/String;

    .line 40
    iput-boolean p3, p0, Lcom/android/gallery3d/data/PersonManage$PersonNameSortKey;->mIsPrivate:Z

    .line 41
    return-void
.end method
