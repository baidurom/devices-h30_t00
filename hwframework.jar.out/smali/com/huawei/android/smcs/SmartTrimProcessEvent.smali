.class public abstract Lcom/huawei/android/smcs/SmartTrimProcessEvent;
.super Ljava/lang/Object;
.source "SmartTrimProcessEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/smcs/SmartTrimProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STPE_ADD_RELATION:I = 0x0

.field public static final STPE_PKG_RESUME:I = 0x1

.field public static final STPE_TYPE_NUM:I = 0x2

.field public static final ST_EVENT_INTER_STRING_TOKEN:Ljava/lang/String; = ";"

.field public static final ST_EVENT_STRING_TOKEN:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "SmartTrimProcessEvent"

.field private static final mDebugLocalClass:Z


# instance fields
.field public mEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/huawei/android/smcs/SmartTrimProcessEvent$1;

    invoke-direct {v0}, Lcom/huawei/android/smcs/SmartTrimProcessEvent$1;-><init>()V

    sput-object v0, Lcom/huawei/android/smcs/SmartTrimProcessEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "event"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessEvent;->mEvent:I

    .line 61
    iput p1, p0, Lcom/huawei/android/smcs/SmartTrimProcessEvent;->mEvent:I

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessEvent;->mEvent:I

    .line 65
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method protected hashSet2strings(Ljava/util/HashSet;)[Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, source:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 111
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 112
    .local v0, dst:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 113
    .local v3, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 115
    .local v1, i:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 116
    :cond_0
    const/4 v4, 0x0

    .line 126
    :goto_0
    return-object v4

    .line 119
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 121
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #s:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 123
    .restart local v3       #s:Ljava/lang/String;
    aput-object v3, v0, v1

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 126
    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessEvent;->mEvent:I

    .line 97
    return-void
.end method

.method protected strings2hashSet([Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .parameter "src"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 143
    .local v0, dst:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    array-length v2, p1

    .local v2, len:I
    if-nez v2, :cond_1

    .line 144
    .end local v2           #len:I
    :cond_0
    const/4 v3, 0x0

    .line 150
    :goto_0
    return-object v3

    .line 146
    .restart local v2       #len:I
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #dst:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 147
    .restart local v0       #dst:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 148
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 150
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 88
    iget v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessEvent;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void
.end method
