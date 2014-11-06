.class public Lcom/huawei/lcagent/client/LogMetricInfo;
.super Ljava/lang/Object;
.source "LogMetricInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/lcagent/client/LogMetricInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public files:[Ljava/lang/String;

.field public id:J

.field public path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/huawei/lcagent/client/LogMetricInfo$1;

    invoke-direct {v0}, Lcom/huawei/lcagent/client/LogMetricInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/lcagent/client/LogMetricInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->id:J

    .line 27
    iput-object v2, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->description:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->files:[Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->path:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "path"
    .parameter "description"
    .parameter "files"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->id:J

    .line 34
    iput-object p3, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->path:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->description:Ljava/lang/String;

    .line 37
    if-eqz p5, :cond_0

    array-length v2, p5

    if-nez v2, :cond_2

    .line 38
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->files:[Ljava/lang/String;

    .line 47
    :cond_1
    return-void

    .line 40
    :cond_2
    array-length v2, p5

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->files:[Ljava/lang/String;

    .line 41
    array-length v1, p5

    .line 43
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 44
    iget-object v2, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->files:[Ljava/lang/String;

    aget-object v3, p5, v0

    aput-object v3, v2, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->id:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->path:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->description:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->files:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/huawei/lcagent/client/LogMetricInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/huawei/lcagent/client/LogMetricInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "description = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v3, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->files:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    :goto_0
    return-object v3

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->files:[Ljava/lang/String;

    array-length v1, v3

    .line 92
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "files["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->files:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogMetricInfo;->files:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 67
    return-void
.end method
