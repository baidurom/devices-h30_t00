.class public final Lcom/android/gallery3d/data/FaceStore$Images$Persons;
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
    name = "Persons"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final FLAG:Ljava/lang/String; = "flag"

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SORT_KEY:Ljava/lang/String; = "sort_key"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-string v0, "internal"

    invoke-static {v0}, Lcom/android/gallery3d/data/FaceStore$Images$Persons;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/FaceStore$Images$Persons;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "volumeName"

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/images/persons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
