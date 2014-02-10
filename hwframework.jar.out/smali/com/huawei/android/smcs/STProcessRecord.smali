.class public final Lcom/huawei/android/smcs/STProcessRecord;
.super Ljava/lang/Object;
.source "STProcessRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/smcs/STProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "STProcessRecord"

.field private static final mDebugLocalClass:Z


# instance fields
.field public curAdj:I

.field public pid:I

.field public pkgList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public processName:Ljava/lang/String;

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/huawei/android/smcs/STProcessRecord$1;

    invoke-direct {v0}, Lcom/huawei/android/smcs/STProcessRecord$1;-><init>()V

    sput-object v0, Lcom/huawei/android/smcs/STProcessRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/huawei/android/smcs/STProcessRecord;->processName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/huawei/android/smcs/STProcessRecord;->pkgList:Ljava/util/HashSet;

    .line 62
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/STProcessRecord;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/util/HashSet;)V
    .locals 1
    .parameter "processName"
    .parameter "uid"
    .parameter "pid"
    .parameter "curAdj"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, pkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/huawei/android/smcs/STProcessRecord;->processName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/huawei/android/smcs/STProcessRecord;->pkgList:Ljava/util/HashSet;

    .line 54
    iput-object p1, p0, Lcom/huawei/android/smcs/STProcessRecord;->processName:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/huawei/android/smcs/STProcessRecord;->uid:I

    .line 56
    iput p3, p0, Lcom/huawei/android/smcs/STProcessRecord;->pid:I

    .line 57
    iput p4, p0, Lcom/huawei/android/smcs/STProcessRecord;->curAdj:I

    .line 58
    iput-object p5, p0, Lcom/huawei/android/smcs/STProcessRecord;->pkgList:Ljava/util/HashSet;

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 71
    const/4 v2, 0x0

    .line 73
    .local v2, input:Lcom/huawei/android/smcs/STProcessRecord;
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v3

    .line 77
    :cond_1
    :try_start_0
    instance-of v4, p1, Lcom/huawei/android/smcs/STProcessRecord;

    if-eqz v4, :cond_0

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/huawei/android/smcs/STProcessRecord;

    move-object v2, v0

    .line 82
    iget-object v4, v2, Lcom/huawei/android/smcs/STProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/android/smcs/STProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    const/4 v3, 0x1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "STProcessRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STProcessRecord.equals: catch exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/huawei/android/smcs/STProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "source"

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 146
    .local v1, pkgs:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/android/smcs/STProcessRecord;->processName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/huawei/android/smcs/STProcessRecord;->uid:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/huawei/android/smcs/STProcessRecord;->pid:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/huawei/android/smcs/STProcessRecord;->curAdj:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    .line 152
    array-length v2, v1

    .line 153
    .local v2, size:I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/huawei/android/smcs/STProcessRecord;->pkgList:Ljava/util/HashSet;

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 155
    iget-object v3, p0, Lcom/huawei/android/smcs/STProcessRecord;->pkgList:Ljava/util/HashSet;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "STProcessRecord: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/smcs/STProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    curAdj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/smcs/STProcessRecord;->curAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    pkgs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/smcs/STProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/smcs/STProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/smcs/STProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, pkgs:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 118
    .local v2, pkg:Ljava/lang/String;
    const/4 v1, 0x0

    .line 119
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 121
    .local v0, i:I
    iget-object v4, p0, Lcom/huawei/android/smcs/STProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget v4, p0, Lcom/huawei/android/smcs/STProcessRecord;->uid:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v4, p0, Lcom/huawei/android/smcs/STProcessRecord;->pid:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v4, p0, Lcom/huawei/android/smcs/STProcessRecord;->curAdj:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v4, p0, Lcom/huawei/android/smcs/STProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 126
    iget-object v4, p0, Lcom/huawei/android/smcs/STProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #pkg:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 129
    .restart local v2       #pkg:Ljava/lang/String;
    aput-object v2, v3, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 136
    return-void
.end method
