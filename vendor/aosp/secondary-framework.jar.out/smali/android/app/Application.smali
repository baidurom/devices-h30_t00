.class public Landroid/app/Application;
.super Landroid/content/ContextWrapper;
.source "Application.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Application$ActivityLifecycleCallbacks;
    }
.end annotation


# static fields
.field static final HWTHEME_FLIPFONT:I = 0x2

.field static final sIsHwTFlipFontOn:Z


# instance fields
.field private mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastConfig:Landroid/content/res/Configuration;

.field public mLoadedApk:Landroid/app/LoadedApk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    const-string v1, "ro.config.hwtheme"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/app/Application;->sIsHwTFlipFontOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mLastConfig:Landroid/content/res/Configuration;

    .line 72
    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, callbacks:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 244
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 245
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 247
    :cond_0
    monitor-exit v2

    .line 248
    return-object v0

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private collectComponentCallbacks()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, callbacks:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 235
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 237
    :cond_0
    monitor-exit v2

    .line 238
    return-object v0

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final attach(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 163
    invoke-static {p1}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    .line 164
    return-void
.end method

.method dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 168
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 169
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 170
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 223
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 225
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 226
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 197
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 198
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 189
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 213
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 215
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 216
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 179
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 180
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 206
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 207
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Landroid/app/Application;->setThemeFontOnConfigChg(Landroid/content/res/Configuration;)V

    .line 103
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 105
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 106
    aget-object v2, v0, v1

    check-cast v2, Landroid/content/ComponentCallbacks;

    invoke-interface {v2, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/app/Application;->setThemeFont()V

    .line 87
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 115
    aget-object v2, v0, v1

    check-cast v2, Landroid/content/ComponentCallbacks;

    invoke-interface {v2}, Landroid/content/ComponentCallbacks;->onLowMemory()V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .parameter "level"

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, callbacks:[Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 123
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 124
    aget-object v0, v1, v2

    .line 125
    .local v0, c:Ljava/lang/Object;
    instance-of v3, v0, Landroid/content/ComponentCallbacks2;

    if-eqz v3, :cond_0

    .line 126
    check-cast v0, Landroid/content/ComponentCallbacks2;

    .end local v0           #c:Ljava/lang/Object;
    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 123
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 145
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 133
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v1

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setThemeFont()V
    .locals 1

    .prologue
    .line 253
    sget-boolean v0, Landroid/app/Application;->sIsHwTFlipFontOn:Z

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Typeface;->setThemeFont(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method setThemeFontOnConfigChg(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 259
    sget-boolean v1, Landroid/app/Application;->sIsHwTFlipFontOn:Z

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Landroid/app/Application;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 261
    .local v0, configChanges:I
    invoke-static {v0}, Landroid/content/pm/ActivityInfoEx;->activityInfoConfigToNative(I)I

    move-result v0

    .line 263
    and-int/lit16 v1, v0, 0x4004

    if-eqz v1, :cond_0

    .line 264
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Typeface;->setThemeFont(Ljava/lang/String;)V

    .line 267
    .end local v0           #configChanges:I
    :cond_0
    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 151
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 139
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
