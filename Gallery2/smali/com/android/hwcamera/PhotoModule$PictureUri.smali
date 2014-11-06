.class Lcom/android/hwcamera/PhotoModule$PictureUri;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureUri"
.end annotation


# instance fields
.field mTitle:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "title"

    .prologue
    .line 6032
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6033
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$PictureUri;->mUri:Landroid/net/Uri;

    .line 6034
    iput-object p2, p0, Lcom/android/hwcamera/PhotoModule$PictureUri;->mTitle:Ljava/lang/String;

    .line 6035
    return-void
.end method
