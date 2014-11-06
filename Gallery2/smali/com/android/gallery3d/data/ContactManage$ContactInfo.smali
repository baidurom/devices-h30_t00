.class public Lcom/android/gallery3d/data/ContactManage$ContactInfo;
.super Ljava/lang/Object;
.source "ContactManage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/ContactManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# instance fields
.field mContactId:I

.field mIsPrivate:Z

.field mName:Ljava/lang/String;

.field mSortKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "contactId"
    .parameter "name"
    .parameter "sortKey"
    .parameter "isPrivate"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/android/gallery3d/data/ContactManage$ContactInfo;->mContactId:I

    .line 95
    iput-object p2, p0, Lcom/android/gallery3d/data/ContactManage$ContactInfo;->mName:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/android/gallery3d/data/ContactManage$ContactInfo;->mSortKey:Ljava/lang/String;

    .line 97
    iput-boolean p4, p0, Lcom/android/gallery3d/data/ContactManage$ContactInfo;->mIsPrivate:Z

    .line 98
    return-void
.end method
