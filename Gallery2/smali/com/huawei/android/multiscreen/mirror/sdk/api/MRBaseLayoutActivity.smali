.class public abstract Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;
.super Landroid/app/Activity;
.source "MRBaseLayoutActivity.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$ILayoutSinkCallback;


# static fields
.field public static final MSG_FINISH:I = 0x21

.field private static globalIndex:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private conn:Landroid/content/ServiceConnection;

.field private context:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

.field private index:I

.field private isActivityAlive:Z

.field private isFirstSurfaceCreated:Z

.field private mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

.field private surface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->globalIndex:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const-string v0, "MIRROR_SDK "

    iput-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$1;-><init>(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->conn:Landroid/content/ServiceConnection;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

    return-void
.end method

.method static synthetic access$1(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

    return-object v0
.end method

.method static synthetic access$3(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->context:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->isActivityAlive:Z

    return v0
.end method

.method static synthetic access$5(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Landroid/view/Surface;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$6(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->conn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$7(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->isFirstSurfaceCreated:Z

    return v0
.end method

.method static synthetic access$8(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->isFirstSurfaceCreated:Z

    return-void
.end method

.method static synthetic access$9(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->finishActivity()V

    return-void
.end method

.method private finishActivity()V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->isActivityAlive:Z

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->isActivityAlive:Z

    .line 129
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->disconnnetMirror()Z

    .line 131
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->mBinder:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSinkServiceHelper$SerivceBinder;->removeCallback()V

    .line 132
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "ISinkCallback connected in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "ISinkCallback connected out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public disconnected()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "ISinkCallback disconnected in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->context:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->finish()V

    .line 180
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "ISinkCallback disconnected out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method public abstract getServiceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getSurfaceHolder()Landroid/view/SurfaceHolder;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 41
    sget v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->globalIndex:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->globalIndex:I

    iput v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->index:I

    .line 42
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->index:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    const-string v2, "LayoutActivity onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iput-object p0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->context:Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->isActivityAlive:Z

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->isFirstSurfaceCreated:Z

    .line 50
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 52
    .local v0, holder:Landroid/view/SurfaceHolder;
    new-instance v1, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;

    invoke-direct {v1, p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity$2;-><init>(Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 83
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->surface:Landroid/view/Surface;

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "LayoutActivity onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "LayoutActivity onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->finishActivity()V

    .line 114
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->finish()V

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "LayoutActivity onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->TAG:Ljava/lang/String;

    const-string v1, "LayoutActivity onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRBaseLayoutActivity;->finish()V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 124
    return-void
.end method
