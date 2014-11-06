.class public Lcom/android/gallery3d/app/FaceRecognitionSettings;
.super Ljava/lang/Object;
.source "FaceRecognitionSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final FACE_RECOGNITION_ENABLED:Z

.field private static sInstance:Lcom/android/gallery3d/app/FaceRecognitionSettings;


# instance fields
.field private mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "lib/libFaceRec.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "key-face"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/gallery3d/settings/GallerySettings;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->mEnabled:Z

    .line 19
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 20
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/gallery3d/app/FaceRecognitionSettings;
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    sget-object v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->sInstance:Lcom/android/gallery3d/app/FaceRecognitionSettings;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/FaceRecognitionSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->sInstance:Lcom/android/gallery3d/app/FaceRecognitionSettings;

    .line 26
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->sInstance:Lcom/android/gallery3d/app/FaceRecognitionSettings;

    return-object v0
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->FACE_RECOGNITION_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 48
    const-string v0, "key-face"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "key-face"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/FaceRecognitionSettings;->mEnabled:Z

    .line 51
    :cond_0
    return-void
.end method
