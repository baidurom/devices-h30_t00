.class public Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;
.super Ljava/lang/Object;
.source "FaceBeautifierParamter.java"


# static fields
.field public static final EYEENLARGE:I = 0x5

.field public static final EYEENLARGE_MAXPARA:I = 0xc8

.field public static final EYEENLARGE_MINPARA:I = 0x0

.field public static final EYERESHAPE_UI_MAXPARA:I = 0x64

.field public static final EYERESHAPE_UI_MINPARA:I = 0x0

.field public static final FACECOLOR:I = 0x1

.field public static final FACECOLOR_MAXPARA:I = 0x6e

.field public static final FACECOLOR_MINPARA:I = 0x0

.field public static final FACECOLOR_UI_MAXPARA:I = 0x64

.field public static final FACECOLOR_UI_MINPARA:I = 0x0

.field public static final FACERESHAPE:I = 0x2

.field public static final FACERESHAPE_MAXPARA:I = 0xc8

.field public static final FACERESHAPE_MINPARA:I = 0x0

.field public static final FACERESHAPE_UI_MAXPARA:I = 0x64

.field public static final FACERESHAPE_UI_MINPARA:I = 0x0

.field public static final FACESMOOTH:I = 0x0

.field public static final FACESMOOTH_MAXPARA:I = 0x82

.field public static final FACESMOOTH_MINPARA:I = 0x0

.field public static final FACESMOOTH_UI_MAXPARA:I = 0x64

.field public static final FACESMOOTH_UI_MINPARA:I = 0x0

.field public static final IRISENLARGE:I = 0x4

.field public static final IRISENLARGE_MAXPARA:I = 0x0

.field public static final IRISENLARGE_MINPARA:I = 0x0

.field public static final NOSERESHAPE:I = 0x3

.field public static final NOSERESHAPE_MAXPARA:I = 0xc8

.field public static final NOSERESHAPE_MINPARA:I = 0x0

.field public static final NOSERESHAPE_UI_MAXPARA:I = 0x64

.field public static final NOSERESHAPE_UI_MINPARA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FaceBeautifierParamter"

.field public static final TEETHWHITEN:I = 0x6

.field public static final TEETHWHITEN_MAXPARA:I = 0xc8

.field public static final TEETHWHITEN_MINPARA:I = 0x0

.field public static final TEETHWHITEN_UI_MAXPARA:I = 0x64

.field public static final TEETHWHITEN_UI_MINPARA:I


# instance fields
.field private mEyeEnlargeValid:Z

.field public mEyeReshapeParameter:I

.field public mFaceColorParameter:I

.field public mFaceReshapeParameter:I

.field public mFaceSmoothParameter:I

.field public mNoseReshapeParameter:I

.field private mOmronEyeEnlarge:I

.field private mOmronFaceColor:I

.field private mOmronFaceReshape:I

.field private mOmronFaceSmooth:I

.field private mOmronIrisEnlarge:I

.field private mOmronNoseReshape:I

.field private mOmronTeethWhiten:I

.field public mTeethWhitenParameter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceSmoothParameter:I

    .line 49
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceColorParameter:I

    .line 50
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceReshapeParameter:I

    .line 51
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mNoseReshapeParameter:I

    .line 52
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeReshapeParameter:I

    .line 53
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mTeethWhitenParameter:I

    .line 55
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceSmooth:I

    .line 56
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceColor:I

    .line 57
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceReshape:I

    .line 58
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronNoseReshape:I

    .line 59
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronIrisEnlarge:I

    .line 60
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronEyeEnlarge:I

    .line 61
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronTeethWhiten:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeEnlargeValid:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceSmoothParameter:I

    .line 49
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceColorParameter:I

    .line 50
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceReshapeParameter:I

    .line 51
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mNoseReshapeParameter:I

    .line 52
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeReshapeParameter:I

    .line 53
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mTeethWhitenParameter:I

    .line 55
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceSmooth:I

    .line 56
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceColor:I

    .line 57
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceReshape:I

    .line 58
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronNoseReshape:I

    .line 59
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronIrisEnlarge:I

    .line 60
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronEyeEnlarge:I

    .line 61
    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronTeethWhiten:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeEnlargeValid:Z

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->set(Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;)V

    .line 69
    return-void
.end method

.method private getOmronParameter(I)I
    .locals 9
    .parameter "type"

    .prologue
    .line 123
    const/16 v1, 0xc8

    .line 124
    .local v1, maxParameter:I
    const/4 v3, 0x0

    .line 125
    .local v3, minParameter:I
    const/16 v2, 0x64

    .line 126
    .local v2, maxUIParameter:I
    const/4 v4, 0x0

    .line 127
    .local v4, minUIParameter:I
    const/4 v6, 0x0

    .line 128
    .local v6, parameter:I
    packed-switch p1, :pswitch_data_0

    .line 179
    const/4 v5, 0x0

    .line 183
    :goto_0
    return v5

    .line 130
    :pswitch_0
    const/16 v1, 0x82

    .line 131
    const/4 v3, 0x0

    .line 132
    const/16 v2, 0x64

    .line 133
    const/4 v4, 0x0

    .line 134
    iget v6, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceSmoothParameter:I

    .line 181
    :goto_1
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    .local v0, input:I
    add-int/lit8 v7, v0, 0x0

    int-to-float v7, v7

    add-int/lit8 v8, v1, 0x0

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/16 v8, 0x64

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v5, v7, 0x0

    .line 183
    .local v5, output:I
    goto :goto_0

    .line 137
    .end local v0           #input:I
    .end local v5           #output:I
    :pswitch_1
    const/16 v1, 0x6e

    .line 138
    const/4 v3, 0x0

    .line 139
    const/16 v2, 0x64

    .line 140
    const/4 v4, 0x0

    .line 141
    iget v6, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceColorParameter:I

    .line 142
    goto :goto_1

    .line 144
    :pswitch_2
    const/16 v1, 0xc8

    .line 145
    const/4 v3, 0x0

    .line 146
    const/16 v2, 0x64

    .line 147
    const/4 v4, 0x0

    .line 148
    iget v6, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceReshapeParameter:I

    .line 149
    goto :goto_1

    .line 151
    :pswitch_3
    const/16 v1, 0xc8

    .line 152
    const/4 v3, 0x0

    .line 153
    const/16 v2, 0x64

    .line 154
    const/4 v4, 0x0

    .line 155
    iget v6, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mNoseReshapeParameter:I

    .line 156
    goto :goto_1

    .line 158
    :pswitch_4
    const/4 v1, 0x0

    .line 159
    const/4 v3, 0x0

    .line 160
    const/16 v2, 0x64

    .line 161
    const/4 v4, 0x0

    .line 162
    iget v6, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeReshapeParameter:I

    .line 163
    goto :goto_1

    .line 165
    :pswitch_5
    const/16 v1, 0xc8

    .line 166
    const/4 v3, 0x0

    .line 167
    const/16 v2, 0x64

    .line 168
    const/4 v4, 0x0

    .line 169
    iget v6, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeReshapeParameter:I

    .line 170
    goto :goto_1

    .line 172
    :pswitch_6
    const/16 v1, 0xc8

    .line 173
    const/4 v3, 0x0

    .line 174
    const/16 v2, 0x64

    .line 175
    const/4 v4, 0x0

    .line 176
    iget v6, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mTeethWhitenParameter:I

    .line 177
    goto :goto_1

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public convertAllToOmronParameter()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->getOmronParameter(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceSmooth:I

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->getOmronParameter(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceColor:I

    .line 112
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->getOmronParameter(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceReshape:I

    .line 113
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->getOmronParameter(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronNoseReshape:I

    .line 114
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->getOmronParameter(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronIrisEnlarge:I

    .line 115
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->getOmronParameter(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronEyeEnlarge:I

    .line 116
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->getOmronParameter(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronTeethWhiten:I

    .line 117
    const-string v0, "FaceBeautifierParamter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceSmooth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronFaceReshape:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronNoseReshape:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronIrisEnlarge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ee:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronEyeEnlarge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mOmronTeethWhiten:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " eev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeEnlargeValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public set(Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    iget v0, p1, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceSmoothParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceSmoothParameter:I

    .line 74
    iget v0, p1, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceColorParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceColorParameter:I

    .line 75
    iget v0, p1, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceReshapeParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceReshapeParameter:I

    .line 76
    iget v0, p1, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mNoseReshapeParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mNoseReshapeParameter:I

    .line 77
    iget v0, p1, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeReshapeParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeReshapeParameter:I

    .line 78
    iget v0, p1, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mTeethWhitenParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mTeethWhitenParameter:I

    .line 79
    iget-boolean v0, p1, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeEnlargeValid:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeEnlargeValid:Z

    goto :goto_0
.end method

.method public updateParameter(II)V
    .locals 0
    .parameter "type"
    .parameter "parameter"

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    return-void

    .line 86
    :pswitch_1
    iput p2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceSmoothParameter:I

    goto :goto_0

    .line 89
    :pswitch_2
    iput p2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceColorParameter:I

    goto :goto_0

    .line 92
    :pswitch_3
    iput p2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mFaceReshapeParameter:I

    goto :goto_0

    .line 95
    :pswitch_4
    iput p2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mNoseReshapeParameter:I

    goto :goto_0

    .line 98
    :pswitch_5
    iput p2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mEyeReshapeParameter:I

    goto :goto_0

    .line 101
    :pswitch_6
    iput p2, p0, Lcom/android/gallery3d/filtershow/omron/FaceBeautifierParamter;->mTeethWhitenParameter:I

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
