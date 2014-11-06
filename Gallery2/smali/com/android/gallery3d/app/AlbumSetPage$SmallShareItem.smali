.class public Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmallShareItem"
.end annotation


# instance fields
.field private shareImagePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shareIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1830
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;->shareIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getShareImagePathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;->shareImagePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1843
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;->shareIntent:Landroid/content/Intent;

    .line 1844
    return-void
.end method

.method public setShareImagePathList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1835
    .local p1, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$SmallShareItem;->shareImagePathList:Ljava/util/ArrayList;

    .line 1836
    return-void
.end method
