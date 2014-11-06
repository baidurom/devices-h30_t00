.class public Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;
.super Ljava/lang/Object;
.source "HwAnimationReflection.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.huawei.hwanimation.AnimUtil"

.field private static final DEBUG:Z = false

.field private static final JAR_PAHT:Ljava/lang/String; = "/system/framework/"

.field private static final TAG:Ljava/lang/String; = "HwAnimationReflection"

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x2

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x1

.field public static final TRANSIT_TASK_CLOSE:I = 0x4

.field public static final TRANSIT_TASK_OPEN:I = 0x3


# instance fields
.field private mAnimUtilObject:Ljava/lang/Object;

.field private mOverrideTransitionMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->mAnimUtilObject:Ljava/lang/Object;

    .line 41
    iput-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->mOverrideTransitionMethod:Ljava/lang/reflect/Method;

    .line 44
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->initAnimUtilObjectAndMethods(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private initAnimUtilObjectAndMethods(Landroid/content/Context;)V
    .locals 10
    .parameter "client"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 73
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 74
    .local v3, loader:Ldalvik/system/PathClassLoader;
    const/4 v0, 0x0

    .line 76
    .local v0, animUtilClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v6, "com.huawei.hwanimation.AnimUtil"

    invoke-virtual {v3, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v0

    .line 80
    :goto_0
    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_1
    return-void

    .line 88
    :cond_1
    new-array v4, v9, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v8

    .line 90
    .local v4, overrideTransitionArgs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_1
    const-string v6, "overrideTransition"

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->mOverrideTransitionMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5

    .line 94
    :goto_2
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->mOverrideTransitionMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_0

    .line 102
    new-array v2, v9, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v2, v8

    .line 103
    .local v2, constructorSignature:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 105
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 109
    :goto_3
    if-eqz v1, :cond_0

    .line 117
    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    .line 119
    .local v5, params:[Ljava/lang/Object;
    :try_start_3
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->mAnimUtilObject:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    .line 129
    :goto_4
    iget-object v6, p0, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->mAnimUtilObject:Ljava/lang/Object;

    if-nez v6, :cond_0

    goto :goto_1

    .line 106
    .end local v5           #params:[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_3

    .line 126
    .restart local v5       #params:[Ljava/lang/Object;
    :catch_1
    move-exception v6

    goto :goto_4

    .line 124
    :catch_2
    move-exception v6

    goto :goto_4

    .line 122
    :catch_3
    move-exception v6

    goto :goto_4

    .line 120
    :catch_4
    move-exception v6

    goto :goto_4

    .line 91
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v2           #constructorSignature:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v5           #params:[Ljava/lang/Object;
    :catch_5
    move-exception v6

    goto :goto_2

    .line 77
    .end local v4           #overrideTransitionArgs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_6
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public overrideTransition(I)V
    .locals 5
    .parameter "transit"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->mOverrideTransitionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->mAnimUtilObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->mOverrideTransitionMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/huawei/gallery3d/photoshare/utils/HwAnimationReflection;->mAnimUtilObject:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    goto :goto_0

    .line 57
    :catch_2
    move-exception v0

    goto :goto_0
.end method
