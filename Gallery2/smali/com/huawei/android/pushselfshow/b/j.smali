.class public Lcom/huawei/android/pushselfshow/b/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/pushselfshow/b/j;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/b/j;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushselfshow/b/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    return p2
.end method
