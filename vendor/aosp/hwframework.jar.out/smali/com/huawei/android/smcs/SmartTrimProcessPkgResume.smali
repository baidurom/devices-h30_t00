.class public final Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
.super Lcom/huawei/android/smcs/SmartTrimProcessEvent;
.source "SmartTrimProcessPkgResume.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SmartTrimProcessPkgResume"

.field private static final mDebugLocalClass:Z


# instance fields
.field public mPkgName:Ljava/lang/String;

.field public mProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume$1;

    invoke-direct {v0}, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume$1;-><init>()V

    sput-object v0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessEvent;-><init>(Landroid/os/Parcel;)V

    .line 34
    iput-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "source"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p2}, Lcom/huawei/android/smcs/SmartTrimProcessEvent;-><init>(I)V

    .line 34
    iput-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->readFromParcel(Landroid/os/Parcel;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sPkg"
    .parameter "processName"

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/android/smcs/SmartTrimProcessEvent;-><init>(I)V

    .line 34
    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method constructor <init>(Ljava/util/StringTokenizer;)V
    .locals 2
    .parameter "stzer"

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/android/smcs/SmartTrimProcessEvent;-><init>(I)V

    .line 34
    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 76
    const/4 v2, 0x0

    .line 78
    .local v2, input:Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v3

    .line 85
    :cond_1
    :try_start_0
    instance-of v4, p1, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;

    if-eqz v4, :cond_0

    .line 92
    move-object v0, p1

    check-cast v0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;

    move-object v2, v0

    .line 94
    iget-object v4, v2, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, v2, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    iget-object v5, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    const/4 v3, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SmartTrimProcessPkgResume"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmartTrimProcessPkgResume.equals: catch exception "

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
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 62
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, sHashCode:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 70
    .end local v1           #sHashCode:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SmartTrimProcessPkgResume"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartTrimProcessPkgResume.hashCode: catch exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SmartTrimProcessPkgResume:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/huawei/android/smcs/SmartTrimProcessEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    iget-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/huawei/android/smcs/SmartTrimProcessPkgResume;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return-void
.end method
