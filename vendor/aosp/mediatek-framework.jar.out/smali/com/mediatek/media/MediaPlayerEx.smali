.class public Lcom/mediatek/media/MediaPlayerEx;
.super Ljava/lang/Object;
.source "MediaPlayerEx.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.media.MediaPlayer"

.field private static final METHOD_NAME:Ljava/lang/String; = "setContext"

.field private static final TAG:Ljava/lang/String; = "MediaPlayerEx"

.field private static sSetContext:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 58
    :try_start_0
    const-string v1, "android.media.MediaPlayer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setContext"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/mediatek/media/MediaPlayerEx;->sSetContext:Ljava/lang/reflect/Method;

    .line 59
    sget-object v1, Lcom/mediatek/media/MediaPlayerEx;->sSetContext:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lcom/mediatek/media/MediaPlayerEx;->sSetContext:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v1, "MediaPlayerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchMethodException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v1, "MediaPlayerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setContextForSecureFlag(Landroid/media/MediaPlayer;Landroid/content/Context;)V
    .locals 7
    .parameter "player"
    .parameter "context"

    .prologue
    .line 76
    const-string v4, "MediaPlayerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContextForSecureFlag() player: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " context: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sSetContext: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/media/MediaPlayerEx;->sSetContext:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v4, Lcom/mediatek/media/MediaPlayerEx;->sSetContext:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 80
    :try_start_0
    sget-object v4, Lcom/mediatek/media/MediaPlayerEx;->sSetContext:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ae:Ljava/lang/IllegalAccessException;
    const-string v4, "MediaPlayerEx"

    const-string v5, "IllegalAccessException: "

    invoke-static {v4, v5, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    .end local v0           #ae:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 84
    .local v3, te:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "MediaPlayerEx"

    const-string v5, "InvocationTargetException: "

    invoke-static {v4, v5, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    .end local v3           #te:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 86
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "MediaPlayerEx"

    const-string v5, "IllegalArgumentException: "

    invoke-static {v4, v5, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 87
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 88
    .local v2, npe:Ljava/lang/NullPointerException;
    const-string v4, "MediaPlayerEx"

    const-string v5, "NullPointerException: "

    invoke-static {v4, v5, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
