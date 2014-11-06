.class Lcom/android/gallery3d/data/ContactManage$NameSortKey;
.super Ljava/lang/Object;
.source "ContactManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/ContactManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameSortKey"
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
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/gallery3d/data/ContactManage$NameSortKey;->mName:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/android/gallery3d/data/ContactManage$NameSortKey;->mSortKey:Ljava/lang/String;

    .line 108
    iput-boolean p3, p0, Lcom/android/gallery3d/data/ContactManage$NameSortKey;->mIsPrivate:Z

    .line 109
    return-void
.end method
