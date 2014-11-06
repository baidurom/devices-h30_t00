.class public final Lcom/android/gallery3d/data/FaceStore$Images$Faces;
.super Ljava/lang/Object;
.source "FaceStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/FaceStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Faces"
.end annotation


# static fields
.field public static final BOTTOM:Ljava/lang/String; = "bottom"

.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final IMAGE_ID:Ljava/lang/String; = "image_id"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final PERSON_ID:Ljava/lang/String; = "person_id"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final SIMILAR_1:Ljava/lang/String; = "similar1"

.field public static final SIMILAR_2:Ljava/lang/String; = "similar2"

.field public static final SIMILAR_3:Ljava/lang/String; = "similar3"

.field public static final TOP:Ljava/lang/String; = "top"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "external"

    invoke-static {v0}, Lcom/android/gallery3d/data/FaceStore$Images$Faces;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/FaceStore$Images$Faces;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "volumeName"

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/images/faces"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
