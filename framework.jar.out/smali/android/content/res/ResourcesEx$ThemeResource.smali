.class Landroid/content/res/ResourcesEx$ThemeResource;
.super Ljava/lang/Object;
.source "ResourcesEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeResource"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field private resName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .parameter "resName"

    .prologue
    .line 821
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 822
    iput-object p1, p0, Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;

    .line 823
    iput-object p2, p0, Landroid/content/res/ResourcesEx$ThemeResource;->resName:Ljava/lang/String;

    .line 824
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 815
    iget-object v0, p0, Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/res/ResourcesEx$ThemeResource;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 815
    iget-object v0, p0, Landroid/content/res/ResourcesEx$ThemeResource;->resName:Ljava/lang/String;

    return-object v0
.end method
