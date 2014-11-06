.class public Lcom/android/hwcamera/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/LocationManager$LocationListener;,
        Lcom/android/hwcamera/LocationManager$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

.field private mListener:Lcom/android/hwcamera/LocationManager$Listener;

.field mLocationListeners:[Lcom/android/hwcamera/LocationManager$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mRecordLocation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/LocationManager$Listener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/android/hwcamera/CustomConfiguration;->getInstance()Lcom/android/hwcamera/CustomConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/LocationManager;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/hwcamera/LocationManager$LocationListener;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/hwcamera/LocationManager$LocationListener;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcom/android/hwcamera/LocationManager$LocationListener;-><init>(Lcom/android/hwcamera/LocationManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/hwcamera/LocationManager$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/android/hwcamera/LocationManager$LocationListener;-><init>(Lcom/android/hwcamera/LocationManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/hwcamera/LocationManager;->mLocationListeners:[Lcom/android/hwcamera/LocationManager$LocationListener;

    .line 51
    iput-object p1, p0, Lcom/android/hwcamera/LocationManager;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/hwcamera/LocationManager;->mListener:Lcom/android/hwcamera/LocationManager$Listener;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/LocationManager;)Lcom/android/hwcamera/LocationManager$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager;->mListener:Lcom/android/hwcamera/LocationManager$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/LocationManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/hwcamera/LocationManager;->mRecordLocation:Z

    return v0
.end method

.method private startReceivingLocationUpdates()V
    .locals 8

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/hwcamera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/hwcamera/LocationManager;->mLocationListeners:[Lcom/android/hwcamera/LocationManager$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/hwcamera/LocationManager;->mLocationListeners:[Lcom/android/hwcamera/LocationManager$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager;->mListener:Lcom/android/hwcamera/LocationManager$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/LocationManager;->mListener:Lcom/android/hwcamera/LocationManager$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/hwcamera/LocationManager$Listener;->showGpsOnScreenIndicator(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 107
    :cond_1
    :goto_1
    const-string v0, "LocationManager"

    const-string v1, "startReceivingLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    return-void

    .line 90
    :catch_0
    move-exception v6

    .line 91
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "LocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 92
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 93
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 103
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "LocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 104
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 105
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/hwcamera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    .line 113
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/LocationManager;->mLocationListeners:[Lcom/android/hwcamera/LocationManager$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/hwcamera/LocationManager;->mLocationListeners:[Lcom/android/hwcamera/LocationManager$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "LocationManager"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 120
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v2, "LocationManager"

    const-string v3, "stopReceivingLocationUpdates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/LocationManager;->mListener:Lcom/android/hwcamera/LocationManager$Listener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/hwcamera/LocationManager;->mListener:Lcom/android/hwcamera/LocationManager$Listener;

    invoke-interface {v2}, Lcom/android/hwcamera/LocationManager$Listener;->hideGpsOnScreenIndicator()V

    .line 123
    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentLocation()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-boolean v3, p0, Lcom/android/hwcamera/LocationManager;->mRecordLocation:Z

    if-nez v3, :cond_1

    move-object v1, v2

    .line 64
    :cond_0
    :goto_0
    return-object v1

    .line 59
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/LocationManager;->mLocationListeners:[Lcom/android/hwcamera/LocationManager$LocationListener;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 60
    iget-object v3, p0, Lcom/android/hwcamera/LocationManager;->mLocationListeners:[Lcom/android/hwcamera/LocationManager$LocationListener;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/hwcamera/LocationManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 61
    .local v1, l:Landroid/location/Location;
    if-nez v1, :cond_0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    .end local v1           #l:Landroid/location/Location;
    :cond_2
    const-string v3, "LocationManager"

    const-string v4, "No location received yet."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 64
    goto :goto_0
.end method

.method public obtainGpsState(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "contentResolver"

    .prologue
    .line 126
    const-string v2, "gps"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 128
    .local v0, gpsState:Z
    const-string v2, "network"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 131
    .local v1, networkState:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openLocationAccess(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "contentResolver"

    .prologue
    const/4 v1, 0x1

    .line 135
    const-string v0, "gps"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "gps"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/LocationManager;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v0}, Lcom/android/hwcamera/CustomConfiguration;->isNeedNetworkLocation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    const-string v0, "network"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    const-string v0, "network"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public recordLocation(Z)V
    .locals 1
    .parameter "recordLocation"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/hwcamera/LocationManager;->mRecordLocation:Z

    if-eq v0, p1, :cond_0

    .line 69
    iput-boolean p1, p0, Lcom/android/hwcamera/LocationManager;->mRecordLocation:Z

    .line 70
    if-eqz p1, :cond_1

    .line 71
    invoke-direct {p0}, Lcom/android/hwcamera/LocationManager;->startReceivingLocationUpdates()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/LocationManager;->stopReceivingLocationUpdates()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/hwcamera/LocationManager$Listener;)V
    .locals 0
    .parameter "mListener"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/hwcamera/LocationManager;->mListener:Lcom/android/hwcamera/LocationManager$Listener;

    .line 218
    return-void
.end method
