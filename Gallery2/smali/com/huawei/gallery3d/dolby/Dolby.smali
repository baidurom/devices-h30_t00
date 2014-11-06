.class public Lcom/huawei/gallery3d/dolby/Dolby;
.super Landroid/widget/ImageView;
.source "Dolby.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/dolby/Dolby$Listener;
    }
.end annotation


# static fields
.field private static final DOLBYEFFECT_CLASS_NAME:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final DOLBY_SUPPORTED:Z = false

.field protected static final TAG:Ljava/lang/String; = "Gallery2:Dolby"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "ro.config.hw_dolby"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/gallery3d/dolby/Dolby;->DOLBY_SUPPORTED:Z

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/huawei/gallery3d/dolby/Dolby;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".DolbyView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/gallery3d/dolby/Dolby;->DOLBYEFFECT_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/huawei/gallery3d/dolby/Dolby;
    .locals 7
    .parameter "context"

    .prologue
    .line 45
    sget-boolean v4, Lcom/huawei/gallery3d/dolby/Dolby;->DOLBY_SUPPORTED:Z

    if-eqz v4, :cond_0

    .line 46
    const-string v4, "Gallery2:Dolby"

    const-string v5, "dolby supported. try to find DolbyView"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :try_start_0
    sget-object v4, Lcom/huawei/gallery3d/dolby/Dolby;->DOLBYEFFECT_CLASS_NAME:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    .local v0, dolbyClass:Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 50
    .local v1, dolbyConstructor:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 51
    .local v3, obj:Ljava/lang/Object;
    check-cast v3, Lcom/huawei/gallery3d/dolby/Dolby;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 64
    .end local v0           #dolbyClass:Ljava/lang/Class;
    .end local v1           #dolbyConstructor:Ljava/lang/reflect/Constructor;
    .end local v3           #obj:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "Gallery2:Dolby"

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    new-instance v3, Lcom/huawei/gallery3d/dolby/Dolby;

    invoke-direct {v3, p0}, Lcom/huawei/gallery3d/dolby/Dolby;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :catch_1
    move-exception v2

    .line 55
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 57
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 58
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 59
    .local v2, e:Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 60
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v2

    .line 61
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public reLayout(IIIII)V
    .locals 0
    .parameter "pl"
    .parameter "pr"
    .parameter "w"
    .parameter "y"
    .parameter "height"

    .prologue
    .line 32
    return-void
.end method

.method public setListener(Lcom/huawei/gallery3d/dolby/Dolby$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 36
    return-void
.end method
