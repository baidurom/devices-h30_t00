.class public Lcom/android/gallery3d/util/ReverseGeocoder;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;
    }
.end annotation


# static fields
.field public static final EARTH_RADIUS_METERS:I = 0x615299

.field private static final GEO_CACHE_FILE:Ljava/lang/String; = "rev_geocoding"

.field private static final GEO_CACHE_MAX_BYTES:I = 0x7d000

.field private static final GEO_CACHE_MAX_ENTRIES:I = 0x3e8

.field private static final GEO_CACHE_VERSION:I = 0x0

.field public static final LAT_MAX:I = 0x5a

.field public static final LAT_MIN:I = -0x5a

.field public static final LON_MAX:I = 0xb4

.field public static final LON_MIN:I = -0xb4

.field private static final MAX_COUNTRY_NAME_LENGTH:I = 0x8

.field private static final MAX_LOCALITY_MILE_RANGE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"

.field private static sCurrentAddress:Landroid/location/Address;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mGeoCache:Lcom/android/gallery3d/common/BlobCache;

.field private mGeocoder:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    .line 81
    const-string v0, "rev_geocoding"

    const/16 v1, 0x3e8

    const v2, 0x7d000

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    .line 84
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 86
    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "locality"

    .prologue
    .line 291
    if-nez p1, :cond_1

    .line 292
    const-string p1, ""

    .line 295
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 293
    .restart local p1
    :cond_1
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string p1, ""

    goto :goto_0
.end method

.method private getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;
    .locals 4
    .parameter "addr"
    .parameter "approxLocation"

    .prologue
    .line 299
    if-nez p1, :cond_1

    .line 300
    const-string v1, ""

    .line 316
    :cond_0
    :goto_0
    return-object v1

    .line 301
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, localityAdminStr:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 303
    if-eqz p2, :cond_2

    .line 310
    :cond_2
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, adminArea:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 316
    .end local v0           #adminArea:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, retVal:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 486
    .end local v0           #retVal:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 471
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static final writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "dos"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 476
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public computeAddress(Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;
    .locals 46
    .parameter "set"

    .prologue
    .line 104
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    .line 105
    .local v4, setMinLatitude:D
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    .line 106
    .local v6, setMinLongitude:D
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    .line 107
    .local v9, setMaxLatitude:D
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    .line 108
    .local v11, setMaxLongitude:D
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    move-object/from16 v0, p1

    iget-wide v15, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    move-wide/from16 v17, v0

    sub-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpg-double v3, v13, v15

    if-gez v3, :cond_0

    .line 110
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    .line 111
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    .line 112
    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    .line 113
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    .line 115
    :cond_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v22

    .line 116
    .local v22, addr1:Landroid/location/Address;
    const/4 v13, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v27

    .line 117
    .local v27, addr2:Landroid/location/Address;
    if-nez v22, :cond_1

    .line 118
    move-object/from16 v22, v27

    .line 119
    :cond_1
    if-nez v27, :cond_2

    .line 120
    move-object/from16 v27, v22

    .line 121
    :cond_2
    if-eqz v22, :cond_3

    if-nez v27, :cond_5

    .line 122
    :cond_3
    const/16 v33, 0x0

    .line 287
    :cond_4
    :goto_0
    return-object v33

    .line 127
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    const-string v8, "location"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/location/LocationManager;

    .line 129
    .local v42, locationManager:Landroid/location/LocationManager;
    const/16 v41, 0x0

    .line 130
    .local v41, location:Landroid/location/Location;
    invoke-virtual/range {v42 .. v42}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v45

    .line 131
    .local v45, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v40, 0x0

    .local v40, i:I
    :goto_1
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v40

    if-ge v0, v3, :cond_6

    .line 132
    move-object/from16 v0, v45

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 133
    .local v44, provider:Ljava/lang/String;
    if-eqz v44, :cond_a

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v41

    .line 134
    :goto_2
    if-eqz v41, :cond_b

    .line 137
    .end local v44           #provider:Ljava/lang/String;
    :cond_6
    const-string v37, ""

    .line 138
    .local v37, currentCity:Ljava/lang/String;
    const-string v36, ""

    .line 139
    .local v36, currentAdminArea:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v38

    .line 140
    .local v38, currentCountry:Ljava/lang/String;
    if-eqz v41, :cond_7

    .line 141
    invoke-virtual/range {v41 .. v41}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual/range {v41 .. v41}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    const/16 v18, 0x1

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v18}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v35

    .line 143
    .local v35, currentAddress:Landroid/location/Address;
    if-nez v35, :cond_c

    .line 144
    sget-object v35, Lcom/android/gallery3d/util/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    .line 148
    :goto_3
    if-eqz v35, :cond_7

    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 149
    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 150
    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 151
    invoke-virtual/range {v35 .. v35}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 155
    .end local v35           #currentAddress:Landroid/location/Address;
    :cond_7
    const/16 v33, 0x0

    .line 156
    .local v33, closestCommonLocation:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 157
    .local v26, addr1Locality:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 158
    .local v31, addr2Locality:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 159
    .local v23, addr1AdminArea:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 160
    .local v28, addr2AdminArea:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 161
    .local v25, addr1CountryCode:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 163
    .local v30, addr2CountryCode:Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 164
    :cond_8
    move-object/from16 v43, v37

    .line 165
    .local v43, otherCity:Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 166
    move-object/from16 v43, v31

    .line 167
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 168
    move-object/from16 v43, v28

    .line 169
    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 173
    :cond_9
    move-object/from16 v31, v26

    .line 174
    move-object/from16 v28, v23

    .line 175
    move-object/from16 v30, v25

    .line 188
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 189
    if-eqz v33, :cond_f

    const-string v3, "null"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 190
    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 133
    .end local v23           #addr1AdminArea:Ljava/lang/String;
    .end local v25           #addr1CountryCode:Ljava/lang/String;
    .end local v26           #addr1Locality:Ljava/lang/String;
    .end local v28           #addr2AdminArea:Ljava/lang/String;
    .end local v30           #addr2CountryCode:Ljava/lang/String;
    .end local v31           #addr2Locality:Ljava/lang/String;
    .end local v33           #closestCommonLocation:Ljava/lang/String;
    .end local v36           #currentAdminArea:Ljava/lang/String;
    .end local v37           #currentCity:Ljava/lang/String;
    .end local v38           #currentCountry:Ljava/lang/String;
    .end local v43           #otherCity:Ljava/lang/String;
    .restart local v44       #provider:Ljava/lang/String;
    :cond_a
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 131
    :cond_b
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_1

    .line 146
    .end local v44           #provider:Ljava/lang/String;
    .restart local v35       #currentAddress:Landroid/location/Address;
    .restart local v36       #currentAdminArea:Ljava/lang/String;
    .restart local v37       #currentCity:Ljava/lang/String;
    .restart local v38       #currentCountry:Ljava/lang/String;
    :cond_c
    sput-object v35, Lcom/android/gallery3d/util/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    goto/16 :goto_3

    .line 177
    .end local v35           #currentAddress:Landroid/location/Address;
    .restart local v23       #addr1AdminArea:Ljava/lang/String;
    .restart local v25       #addr1CountryCode:Ljava/lang/String;
    .restart local v26       #addr1Locality:Ljava/lang/String;
    .restart local v28       #addr2AdminArea:Ljava/lang/String;
    .restart local v30       #addr2CountryCode:Ljava/lang/String;
    .restart local v31       #addr2Locality:Ljava/lang/String;
    .restart local v33       #closestCommonLocation:Ljava/lang/String;
    .restart local v43       #otherCity:Ljava/lang/String;
    :cond_d
    move-object/from16 v43, v26

    .line 178
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 179
    move-object/from16 v43, v23

    .line 180
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 184
    :cond_e
    move-object/from16 v26, v31

    .line 185
    move-object/from16 v23, v28

    .line 186
    move-object/from16 v25, v30

    goto/16 :goto_4

    .line 197
    :cond_f
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 198
    if-eqz v33, :cond_10

    const-string v3, "null"

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    .end local v43           #otherCity:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 205
    if-eqz v33, :cond_12

    const-string v3, ""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 206
    move-object/from16 v32, v23

    .line 207
    .local v32, adminArea:Ljava/lang/String;
    move-object/from16 v34, v25

    .line 208
    .local v34, countryCode:Ljava/lang/String;
    if-eqz v32, :cond_4

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 209
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 212
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 220
    .end local v32           #adminArea:Ljava/lang/String;
    .end local v34           #countryCode:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 221
    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 222
    move-object/from16 v26, v31

    .line 224
    :cond_13
    const-string v3, ""

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 225
    move-object/from16 v31, v26

    .line 227
    :cond_14
    const-string v3, ""

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 228
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 231
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 239
    :cond_16
    const/4 v3, 0x1

    new-array v0, v3, [F

    move-object/from16 v21, v0

    .local v21, distanceFloat:[F
    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    .line 240
    invoke-static/range {v13 .. v21}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 242
    const/4 v3, 0x0

    aget v3, v21, v3

    float-to-double v13, v3

    invoke-static {v13, v14}, Lcom/android/gallery3d/util/GalleryUtils;->toMile(D)D

    move-result-wide v13

    double-to-int v0, v13

    move/from16 v39, v0

    .line 243
    .local v39, distance:I
    const/16 v3, 0x14

    move/from16 v0, v39

    if-ge v0, v3, :cond_17

    .line 246
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v33

    .line 247
    if-nez v33, :cond_4

    .line 250
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v33

    .line 251
    if-nez v33, :cond_4

    .line 257
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 258
    if-eqz v33, :cond_18

    const-string v3, ""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 259
    move-object/from16 v34, v25

    .line 261
    .restart local v34       #countryCode:Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 269
    .end local v34           #countryCode:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 270
    if-eqz v33, :cond_19

    const-string v3, ""

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    :cond_19
    invoke-virtual/range {v22 .. v22}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v24

    .line 275
    .local v24, addr1Country:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v29

    .line 276
    .local v29, addr2Country:Ljava/lang/String;
    if-nez v24, :cond_1a

    .line 277
    move-object/from16 v24, v25

    .line 278
    :cond_1a
    if-nez v29, :cond_1b

    .line 279
    move-object/from16 v29, v30

    .line 280
    :cond_1b
    if-eqz v24, :cond_1c

    if-nez v29, :cond_1d

    .line 281
    :cond_1c
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 282
    :cond_1d
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0x8

    if-gt v3, v8, :cond_1e

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0x8

    if-le v3, v8, :cond_1f

    .line 283
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0

    .line 285
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " - "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_0
.end method

.method public getAddress(DD)Ljava/lang/String;
    .locals 10
    .parameter "lat"
    .parameter "lng"

    .prologue
    const/4 v9, 0x0

    .line 89
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v6

    .line 90
    .local v6, addr:Landroid/location/Address;
    if-nez v6, :cond_1

    move-object v8, v9

    .line 98
    :cond_0
    :goto_0
    return-object v8

    .line 91
    :cond_1
    invoke-virtual {v6}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, addrAdminArea:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v8, v9

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, addrLocality:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v8, v9

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public lookupAddress(DDZ)Landroid/location/Address;
    .locals 24
    .parameter "latitude"
    .parameter "longitude"
    .parameter "useCache"

    .prologue
    .line 322
    const-wide v3, 0x4056800000000000L

    add-double v3, v3, p1

    const-wide/high16 v5, 0x4000

    mul-double/2addr v3, v5

    const-wide v5, 0x4056800000000000L

    mul-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L

    add-double v5, v5, p3

    add-double/2addr v3, v5

    const-wide v5, 0x415854a640000000L

    mul-double/2addr v3, v5

    double-to-long v0, v3

    move-wide/from16 v19, v0

    .line 324
    .local v19, locationKey:J
    const/4 v12, 0x0

    .line 325
    .local v12, cachedLocation:[B
    if-eqz p5, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v3, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v12

    .line 328
    :cond_0
    const/4 v9, 0x0

    .line 329
    .local v9, address:Landroid/location/Address;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v21

    .line 330
    .local v21, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v12, :cond_1

    array-length v3, v12

    if-nez v3, :cond_7

    .line 331
    :cond_1
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_4

    .line 332
    :cond_2
    const/4 v9, 0x0

    .line 411
    .end local v9           #address:Landroid/location/Address;
    .end local v21           #networkInfo:Landroid/net/NetworkInfo;
    :cond_3
    :goto_0
    return-object v9

    .line 334
    .restart local v9       #address:Landroid/location/Address;
    .restart local v21       #networkInfo:Landroid/net/NetworkInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v8, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v10

    .line 335
    .local v10, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 336
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #address:Landroid/location/Address;
    check-cast v9, Landroid/location/Address;

    .line 337
    .restart local v9       #address:Landroid/location/Address;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 338
    .local v11, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 339
    .local v15, dos:Ljava/io/DataOutputStream;
    invoke-virtual {v9}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v18

    .line 340
    .local v18, locale:Ljava/util/Locale;
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v9}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v9}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v22

    .line 346
    .local v22, numAddressLines:I
    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 347
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 348
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 347
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 350
    :cond_5
    invoke-virtual {v9}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v9}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v9}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v9}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v9}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v9}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v9}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v9}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v9}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->flush()V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v3, :cond_6

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V

    .line 365
    :cond_6
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_0

    .line 408
    .end local v9           #address:Landroid/location/Address;
    .end local v10           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v11           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v15           #dos:Ljava/io/DataOutputStream;
    .end local v16           #i:I
    .end local v18           #locale:Ljava/util/Locale;
    .end local v21           #networkInfo:Landroid/net/NetworkInfo;
    .end local v22           #numAddressLines:I
    :catch_0
    move-exception v3

    .line 411
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 369
    .restart local v9       #address:Landroid/location/Address;
    .restart local v21       #networkInfo:Landroid/net/NetworkInfo;
    :cond_7
    new-instance v14, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v14, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 371
    .local v14, dis:Ljava/io/DataInputStream;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v17

    .line 372
    .local v17, language:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v13

    .line 373
    .local v13, country:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v23

    .line 374
    .local v23, variant:Ljava/lang/String;
    const/16 v18, 0x0

    .line 375
    .restart local v18       #locale:Ljava/util/Locale;
    if-eqz v17, :cond_8

    .line 376
    if-nez v13, :cond_9

    .line 377
    new-instance v18, Ljava/util/Locale;

    .end local v18           #locale:Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 384
    .restart local v18       #locale:Ljava/util/Locale;
    :cond_8
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 385
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 386
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v9

    goto/16 :goto_0

    .line 378
    :cond_9
    if-nez v23, :cond_a

    .line 379
    new-instance v18, Ljava/util/Locale;

    .end local v18           #locale:Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v18       #locale:Ljava/util/Locale;
    goto :goto_2

    .line 381
    :cond_a
    new-instance v18, Ljava/util/Locale;

    .end local v18           #locale:Ljava/util/Locale;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v13, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v18       #locale:Ljava/util/Locale;
    goto :goto_2

    .line 388
    :cond_b
    new-instance v9, Landroid/location/Address;

    .end local v9           #address:Landroid/location/Address;
    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 390
    .restart local v9       #address:Landroid/location/Address;
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 392
    .restart local v22       #numAddressLines:I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 393
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v9, v0, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 392
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 395
    :cond_c
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 396
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 397
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 398
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 400
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 401
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 402
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 403
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 404
    invoke-static {v14}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public lookupAddressFromCache(DD)Landroid/location/Address;
    .locals 15
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 416
    const-wide v11, 0x4056800000000000L

    add-double v11, v11, p1

    const-wide/high16 v13, 0x4000

    mul-double/2addr v11, v13

    const-wide v13, 0x4056800000000000L

    mul-double/2addr v11, v13

    const-wide v13, 0x4066800000000000L

    add-double v13, v13, p3

    add-double/2addr v11, v13

    const-wide v13, 0x415854a640000000L

    mul-double/2addr v11, v13

    double-to-long v7, v11

    .line 418
    .local v7, locationKey:J
    const/4 v1, 0x0

    .line 419
    .local v1, cachedLocation:[B
    :try_start_0
    iget-object v11, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v11, :cond_0

    .line 420
    iget-object v11, p0, Lcom/android/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v11, v7, v8}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v1

    .line 422
    :cond_0
    const/4 v0, 0x0

    .line 423
    .local v0, address:Landroid/location/Address;
    if-eqz v1, :cond_3

    array-length v11, v1

    if-lez v11, :cond_3

    .line 425
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 427
    .local v3, dis:Ljava/io/DataInputStream;
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, language:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, country:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v10

    .line 430
    .local v10, variant:Ljava/lang/String;
    const/4 v6, 0x0

    .line 431
    .local v6, locale:Ljava/util/Locale;
    if-eqz v5, :cond_1

    .line 432
    if-nez v2, :cond_4

    .line 433
    new-instance v6, Ljava/util/Locale;

    .end local v6           #locale:Ljava/util/Locale;
    invoke-direct {v6, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 440
    .restart local v6       #locale:Ljava/util/Locale;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 441
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 442
    const/4 v0, 0x0

    .line 467
    .end local v0           #address:Landroid/location/Address;
    .end local v2           #country:Ljava/lang/String;
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #locale:Ljava/util/Locale;
    .end local v10           #variant:Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0

    .line 434
    .restart local v0       #address:Landroid/location/Address;
    .restart local v2       #country:Ljava/lang/String;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v5       #language:Ljava/lang/String;
    .restart local v6       #locale:Ljava/util/Locale;
    .restart local v10       #variant:Ljava/lang/String;
    :cond_4
    if-nez v10, :cond_5

    .line 435
    new-instance v6, Ljava/util/Locale;

    .end local v6           #locale:Ljava/util/Locale;
    invoke-direct {v6, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6       #locale:Ljava/util/Locale;
    goto :goto_0

    .line 437
    :cond_5
    new-instance v6, Ljava/util/Locale;

    .end local v6           #locale:Ljava/util/Locale;
    invoke-direct {v6, v5, v2, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6       #locale:Ljava/util/Locale;
    goto :goto_0

    .line 444
    :cond_6
    new-instance v0, Landroid/location/Address;

    .end local v0           #address:Landroid/location/Address;
    invoke-direct {v0, v6}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 446
    .restart local v0       #address:Landroid/location/Address;
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 448
    .local v9, numAddressLines:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v9, :cond_7

    .line 449
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 448
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 451
    :cond_7
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 452
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 453
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 454
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 456
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 457
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 458
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 459
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 460
    invoke-static {v3}, Lcom/android/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 464
    .end local v0           #address:Landroid/location/Address;
    .end local v2           #country:Ljava/lang/String;
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v4           #i:I
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #locale:Ljava/util/Locale;
    .end local v9           #numAddressLines:I
    .end local v10           #variant:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 467
    const/4 v0, 0x0

    goto :goto_1
.end method
