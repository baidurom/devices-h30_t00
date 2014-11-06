.class public final Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
.super Lcom/huawei/android/smcs/SmartTrimProcessEvent;
.source "SmartTrimProcessAddRelation.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SmartTrimProcessAddRelation"

.field private static final mDebugLocalClass:Z


# instance fields
.field public mClientPkgList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mClientProc:Ljava/lang/String;

.field public mServerPkgList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mServerProc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation$1;

    invoke-direct {v0}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation$1;-><init>()V

    sput-object v0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessEvent;-><init>(Landroid/os/Parcel;)V

    .line 41
    iput-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientPkgList:Ljava/util/HashSet;

    .line 49
    iput-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerPkgList:Ljava/util/HashSet;

    .line 61
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->readFromParcel(Landroid/os/Parcel;)V

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "source"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p2}, Lcom/huawei/android/smcs/SmartTrimProcessEvent;-><init>(I)V

    .line 41
    iput-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientPkgList:Ljava/util/HashSet;

    .line 49
    iput-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerPkgList:Ljava/util/HashSet;

    .line 66
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->readFromParcel(Landroid/os/Parcel;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 2
    .parameter "clientProc"
    .parameter
    .parameter "serverProc"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, clientPkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p4, serverPkgList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/android/smcs/SmartTrimProcessEvent;-><init>(I)V

    .line 41
    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientPkgList:Ljava/util/HashSet;

    .line 49
    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerPkgList:Ljava/util/HashSet;

    .line 53
    iput-object p1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientPkgList:Ljava/util/HashSet;

    .line 55
    iput-object p3, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerPkgList:Ljava/util/HashSet;

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/util/StringTokenizer;)V
    .locals 2
    .parameter "stzer"

    .prologue
    const/4 v1, 0x0

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/android/smcs/SmartTrimProcessEvent;-><init>(I)V

    .line 41
    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientPkgList:Ljava/util/HashSet;

    .line 49
    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerPkgList:Ljava/util/HashSet;

    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 88
    const/4 v3, 0x0

    .line 92
    .local v3, input:Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v5

    .line 99
    :cond_1
    :try_start_0
    instance-of v6, p1, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;

    if-eqz v6, :cond_0

    .line 106
    move-object v0, p1

    check-cast v0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;

    move-object v3, v0

    .line 108
    iget-object v6, v3, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    iget-object v7, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 109
    .local v1, clientEqual:Z
    iget-object v6, v3, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    iget-object v7, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 111
    .local v4, serverEqual:Z
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 115
    const/4 v5, 0x1

    goto :goto_0

    .line 116
    .end local v1           #clientEqual:Z
    .end local v4           #serverEqual:Z
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "SmartTrimProcessAddRelation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartTrimProcessAddRelation.equals: catch exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 75
    const/4 v1, -0x1

    .line 76
    .local v1, hashCode:I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, hashCodeStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    .end local v1           #hashCode:I
    .end local v2           #hashCodeStr:Ljava/lang/String;
    :goto_0
    return v1

    .line 80
    .restart local v1       #hashCode:I
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SmartTrimProcessAddRelation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartTrimProcessAddRelation.hashCode: catch exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 170
    .local v0, pkgs:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->strings2hashSet([Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientPkgList:Ljava/util/HashSet;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->strings2hashSet([Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerPkgList:Ljava/util/HashSet;

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SmartTrimProcessAddRelation:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client pkg list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientPkgList:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server pkg list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerPkgList:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 147
    .local v0, pkgs:[Ljava/lang/String;
    invoke-super {p0, p1, p2}, Lcom/huawei/android/smcs/SmartTrimProcessEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 149
    iget-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientProc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mClientPkgList:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->hashSet2strings(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerProc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->mServerPkgList:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Lcom/huawei/android/smcs/SmartTrimProcessAddRelation;->hashSet2strings(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 160
    return-void
.end method
