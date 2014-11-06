.class Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;
.super Ljava/lang/Object;
.source "ContactManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/ContactManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactIdSortKey"
.end annotation


# instance fields
.field mContactId:I

.field mIsPrivate:Z

.field mSortKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .parameter "contactId"
    .parameter "sortKey"
    .parameter "isPrivate"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;->mContactId:I

    .line 118
    iput-object p2, p0, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;->mSortKey:Ljava/lang/String;

    .line 119
    iput-boolean p3, p0, Lcom/android/gallery3d/data/ContactManage$ContactIdSortKey;->mIsPrivate:Z

    .line 120
    return-void
.end method
