.class Lcom/android/internal/os/PreloadResourceThread;
.super Ljava/lang/Thread;
.source "ZygoteInit.java"


# static fields
.field private static final PRELOAD_GC_THRESHOLD:I = 0x7a120

.field private static final TAG:Ljava/lang/String; = "PreloadResource"

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field id:I

.field private mPart:I

.field runtime:Ldalvik/system/VMRuntime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 948
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/PreloadResourceThread;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Ldalvik/system/VMRuntime;I)V
    .locals 0
    .parameter "rt"
    .parameter "part"

    .prologue
    .line 954
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 955
    iput-object p1, p0, Lcom/android/internal/os/PreloadResourceThread;->runtime:Ldalvik/system/VMRuntime;

    .line 956
    iput p2, p0, Lcom/android/internal/os/PreloadResourceThread;->mPart:I

    .line 957
    return-void
.end method

.method private preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 7
    .parameter "runtime"
    .parameter "ar"

    .prologue
    .line 960
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 963
    .local v0, N:I
    iget v4, p0, Lcom/android/internal/os/PreloadResourceThread;->mPart:I

    if-nez v4, :cond_1

    .line 964
    const/4 v2, 0x0

    .line 965
    .local v2, j:I
    shr-int/lit8 v3, v0, 0x1

    .line 971
    .local v3, k:I
    :goto_0
    move v1, v2

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 972
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v4

    const v5, 0x7a120

    if-le v4, v5, :cond_0

    .line 976
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 977
    invoke-virtual {p1}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 978
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 980
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    .line 982
    iget v4, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    if-eqz v4, :cond_2

    .line 983
    sget-object v4, Lcom/android/internal/os/PreloadResourceThread;->mResources:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_2

    .line 984
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 967
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #k:I
    :cond_1
    shr-int/lit8 v4, v0, 0x1

    add-int/lit8 v2, v4, 0x1

    .line 968
    .restart local v2       #j:I
    move v3, v0

    .restart local v3       #k:I
    goto :goto_0

    .line 971
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 992
    :cond_3
    sub-int v4, v3, v2

    return v4
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 997
    .local v2, startTime:J
    sget-object v4, Lcom/android/internal/os/PreloadResourceThread;->mResources:Landroid/content/res/Resources;

    const v5, 0x1070005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 999
    .local v1, ar:Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/android/internal/os/PreloadResourceThread;->runtime:Ldalvik/system/VMRuntime;

    invoke-direct {p0, v4, v1}, Lcom/android/internal/os/PreloadResourceThread;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 1001
    .local v0, N:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Zygote:Preload part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/os/PreloadResourceThread;->mPart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resources in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->addBootEvent(Ljava/lang/String;)V

    .line 1007
    return-void
.end method
