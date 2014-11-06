.class public Lcom/android/gallery3d/app/StitchingProgressManager;
.super Ljava/lang/Object;
.source "StitchingProgressManager.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 0
    .parameter "app"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 26
    return-void
.end method

.method public getProgress(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 1
    .parameter "uri"

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 29
    return-void
.end method
