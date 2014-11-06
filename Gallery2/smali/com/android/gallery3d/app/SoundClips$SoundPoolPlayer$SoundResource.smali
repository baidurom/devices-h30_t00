.class Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;
.super Ljava/lang/Object;
.source "SoundClips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundResource"
.end annotation


# static fields
.field public static final INNER_TYPE:I = 0x1

.field public static final OUTTER_TYPE:I


# instance fields
.field private type:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "value"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;->type:I

    .line 64
    iput-object p2, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;->value:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;->value:Ljava/lang/String;

    return-object v0
.end method
