.class public final Lcom/huawei/motiondetection/MotionTypeApps;
.super Ljava/lang/Object;
.source "MotionTypeApps.java"


# static fields
.field public static final KEY_FLIP:Ljava/lang/String; = "motion_flip"

.field public static final KEY_FLIP_MUTE_CALL:Ljava/lang/String; = "motion_flip_mute_call"

.field public static final KEY_FLIP_MUTE_CLOCK:Ljava/lang/String; = "motion_flip_mute_clock"

.field public static final KEY_PAN:Ljava/lang/String; = "motion_pan"

.field public static final KEY_PAN_BROWSE:Ljava/lang/String; = "motion_pan_browse"

.field public static final KEY_PICKUP:Ljava/lang/String; = "motion_pickup"

.field public static final KEY_PICKUP_REDUCE_CALL:Ljava/lang/String; = "motion_pickup_reduce_call"

.field public static final KEY_PICKUP_REDUCE_CLOCK:Ljava/lang/String; = "motion_pickup_reduce_clock"

.field public static final KEY_POCKET:Ljava/lang/String; = "motion_pocket"

.field public static final KEY_POCKET_CALL_RAISE:Ljava/lang/String; = "motion_pocket_call_raise"

.field public static final KEY_PROXI:Ljava/lang/String; = "motion_proximity"

.field public static final KEY_PROXI_ANSWER:Ljava/lang/String; = "motion_proximity_answer"

.field public static final KEY_PROXI_DIAL:Ljava/lang/String; = "motion_proximity_dial"

.field public static final KEY_SHAKE:Ljava/lang/String; = "motion_shake"

.field public static final KEY_SHAKE_CHANGE_WALLPAPER:Ljava/lang/String; = "motion_shake_change_wallpaper"

.field public static final KEY_SHAKE_REARRAGE_WIDGETS:Ljava/lang/String; = "motion_shake_rearrange_widgets"

.field public static final KEY_SHAKE_REFRESH:Ljava/lang/String; = "motion_shake_refresh"

.field public static final KEY_SHAKE_START_PRIVACY:Ljava/lang/String; = "motion_shake_start_privacy"

.field public static final KEY_SWIPE:Ljava/lang/String; = "motion_swipe"

.field public static final KEY_SWIPE_ANSWER:Ljava/lang/String; = "motion_swipe_answer"

.field public static final KEY_TAP:Ljava/lang/String; = "motion_tap"

.field public static final KEY_TAP_TOP:Ljava/lang/String; = "motion_tap_top"

.field public static final KEY_TILT_LR:Ljava/lang/String; = "motion_tilt_lr"

.field public static final KEY_TILT_LR_MOVE_WIDGETS:Ljava/lang/String; = "motion_tilt_lr_move_widgets"

.field public static final MOTION_KEY_APPS_FLIP_SILENT:Ljava/lang/String; = "motion_flip_silent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_KEY_APPS_PICKUP_WEAKEN:Ljava/lang/String; = "motion_pickup_weaken"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOTION_KEY_APPS_PROXI_ANSWER:Ljava/lang/String; = "motion_proximity_answer_call"

.field public static final MOTION_TYPE_APPS_FLIP_SILENT:I = 0x2

.field public static final MOTION_TYPE_APPS_PICKUP_WEAKEN:I = 0x1

.field public static final MOTION_TYPE_APPS_PROXIMITY_ANSWER:I = 0x3

.field public static final MOTION_TYPE_OPERAND:I = 0x64

.field public static final TYPE_FLIP:I = 0xc8

.field public static final TYPE_FLIP_MUTE_CALL:I = 0xc9

.field public static final TYPE_FLIP_MUTE_CLOCK:I = 0xca

.field public static final TYPE_NOT_SUPPORT:I = -0x1

.field public static final TYPE_PAN:I = 0x2bc

.field public static final TYPE_PAN_BROWSE:I = 0x2bd

.field public static final TYPE_PICKUP:I = 0x64

.field public static final TYPE_PICKUP_REDUCE_CALL:I = 0x65

.field public static final TYPE_PICKUP_REDUCE_CLOCK:I = 0x66

.field public static final TYPE_POCKET:I = 0x320

.field public static final TYPE_POCKET_CALL_RAISE:I = 0x321

.field public static final TYPE_PROXIMITY:I = 0x12c

.field public static final TYPE_PROXIMITY_ANSWER:I = 0x12d

.field public static final TYPE_PROXIMITY_DIAL:I = 0x12e

.field public static final TYPE_SHAKE:I = 0x190

.field public static final TYPE_SHAKE_CHANGE_WALLPAPER:I = 0x192

.field public static final TYPE_SHAKE_REARRAGE_WIDGETS:I = 0x193

.field public static final TYPE_SHAKE_REFRESH:I = 0x191

.field public static final TYPE_SHAKE_START_PRIVACY:I = 0x194

.field public static final TYPE_SWIPE:I = 0x384

.field public static final TYPE_SWIPE_ANSWER:I = 0x385

.field public static final TYPE_TAP:I = 0x1f4

.field public static final TYPE_TAP_TOP:I = 0x1f5

.field public static final TYPE_TILT_LR:I = 0x258

.field public static final TYPE_TILT_LR_MOVE_WIDGETS:I = 0x259


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static getFlipKey(I)Ljava/lang/String;
    .locals 1
    .parameter "motionApps"

    .prologue
    .line 445
    const-string v0, ""

    .line 446
    .local v0, motionKey:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 459
    :goto_0
    return-object v0

    .line 448
    :pswitch_0
    const-string v0, "motion_flip"

    .line 449
    goto :goto_0

    .line 451
    :pswitch_1
    const-string v0, "motion_flip_mute_call"

    .line 452
    goto :goto_0

    .line 454
    :pswitch_2
    const-string v0, "motion_flip_mute_clock"

    .line 455
    goto :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMotionKeyByMotionApps(I)Ljava/lang/String;
    .locals 2
    .parameter "motionApps"

    .prologue
    .line 248
    const-string v1, ""

    .line 249
    .local v1, motionKey:Ljava/lang/String;
    invoke-static {p0}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionTypeByMotionApps(I)I

    move-result v0

    .line 250
    .local v0, motion:I
    sparse-switch v0, :sswitch_data_0

    .line 281
    :goto_0
    return-object v1

    .line 252
    :sswitch_0
    invoke-static {p0}, Lcom/huawei/motiondetection/MotionTypeApps;->getPickupKey(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    goto :goto_0

    .line 255
    :sswitch_1
    invoke-static {p0}, Lcom/huawei/motiondetection/MotionTypeApps;->getFlipKey(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    goto :goto_0

    .line 258
    :sswitch_2
    invoke-static {p0}, Lcom/huawei/motiondetection/MotionTypeApps;->getProxiKey(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    goto :goto_0

    .line 261
    :sswitch_3
    invoke-static {p0}, Lcom/huawei/motiondetection/MotionTypeApps;->getShakeKey(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    goto :goto_0

    .line 264
    :sswitch_4
    invoke-static {p0}, Lcom/huawei/motiondetection/MotionTypeApps;->getTiltLrKey(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    goto :goto_0

    .line 267
    :sswitch_5
    invoke-static {p0}, Lcom/huawei/motiondetection/MotionTypeApps;->getSwipeKey(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    goto :goto_0

    .line 270
    :sswitch_6
    invoke-static {p0}, Lcom/huawei/motiondetection/MotionTypeApps;->getPocketKey(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    goto :goto_0

    .line 273
    :sswitch_7
    invoke-static {p0}, Lcom/huawei/motiondetection/MotionTypeApps;->getTapKey(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    goto :goto_0

    .line 276
    :sswitch_8
    invoke-static {p0}, Lcom/huawei/motiondetection/MotionTypeApps;->getPanKey(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    goto :goto_0

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_7
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_8
        0x320 -> :sswitch_6
        0x384 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getMotionTypeByMotionApps(I)I
    .locals 2
    .parameter "motionApps"

    .prologue
    .line 237
    rem-int/lit8 v0, p0, 0x64

    .line 238
    .local v0, motion:I
    sub-int v1, p0, v0

    return v1
.end method

.method private static getPanKey(I)Ljava/lang/String;
    .locals 1
    .parameter "motionApps"

    .prologue
    .line 291
    const-string v0, ""

    .line 292
    .local v0, motionKey:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 302
    :goto_0
    return-object v0

    .line 294
    :pswitch_0
    const-string v0, "motion_pan"

    .line 295
    goto :goto_0

    .line 297
    :pswitch_1
    const-string v0, "motion_pan_browse"

    .line 298
    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getPickupKey(I)Ljava/lang/String;
    .locals 1
    .parameter "motionApps"

    .prologue
    .line 468
    const-string v0, ""

    .line 469
    .local v0, motionKey:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 483
    :goto_0
    return-object v0

    .line 471
    :pswitch_0
    const-string v0, "motion_pickup"

    .line 472
    goto :goto_0

    .line 474
    :pswitch_1
    const-string v0, "motion_pickup_reduce_call"

    .line 475
    goto :goto_0

    .line 477
    :pswitch_2
    const-string v0, "motion_pickup_reduce_clock"

    .line 478
    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getPocketKey(I)Ljava/lang/String;
    .locals 1
    .parameter "motionApps"

    .prologue
    .line 331
    const-string v0, ""

    .line 332
    .local v0, motionKey:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 342
    :goto_0
    return-object v0

    .line 334
    :pswitch_0
    const-string v0, "motion_pocket"

    .line 335
    goto :goto_0

    .line 337
    :pswitch_1
    const-string v0, "motion_pocket_call_raise"

    .line 338
    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getProxiKey(I)Ljava/lang/String;
    .locals 1
    .parameter "motionApps"

    .prologue
    .line 422
    const-string v0, ""

    .line 423
    .local v0, motionKey:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 436
    :goto_0
    return-object v0

    .line 425
    :pswitch_0
    const-string v0, "motion_proximity"

    .line 426
    goto :goto_0

    .line 428
    :pswitch_1
    const-string v0, "motion_proximity_answer"

    .line 429
    goto :goto_0

    .line 431
    :pswitch_2
    const-string v0, "motion_proximity_dial"

    .line 432
    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getShakeKey(I)Ljava/lang/String;
    .locals 1
    .parameter "motionApps"

    .prologue
    .line 391
    const-string v0, ""

    .line 392
    .local v0, motionKey:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 413
    :goto_0
    return-object v0

    .line 394
    :pswitch_0
    const-string v0, "motion_shake"

    .line 395
    goto :goto_0

    .line 397
    :pswitch_1
    const-string v0, "motion_shake_refresh"

    .line 398
    goto :goto_0

    .line 400
    :pswitch_2
    const-string v0, "motion_shake_change_wallpaper"

    .line 401
    goto :goto_0

    .line 403
    :pswitch_3
    const-string v0, "motion_shake_rearrange_widgets"

    .line 404
    goto :goto_0

    .line 407
    :pswitch_4
    const-string v0, "motion_shake_start_privacy"

    .line 408
    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getSwipeKey(I)Ljava/lang/String;
    .locals 1
    .parameter "motionApps"

    .prologue
    .line 351
    const-string v0, ""

    .line 352
    .local v0, motionKey:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 362
    :goto_0
    return-object v0

    .line 354
    :pswitch_0
    const-string v0, "motion_swipe"

    .line 355
    goto :goto_0

    .line 357
    :pswitch_1
    const-string v0, "motion_swipe_answer"

    .line 358
    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getTapKey(I)Ljava/lang/String;
    .locals 1
    .parameter "motionApps"

    .prologue
    .line 311
    const-string v0, ""

    .line 312
    .local v0, motionKey:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 322
    :goto_0
    return-object v0

    .line 314
    :pswitch_0
    const-string v0, "motion_tap"

    .line 315
    goto :goto_0

    .line 317
    :pswitch_1
    const-string v0, "motion_tap_top"

    .line 318
    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getTiltLrKey(I)Ljava/lang/String;
    .locals 1
    .parameter "motionApps"

    .prologue
    .line 371
    const-string v0, ""

    .line 372
    .local v0, motionKey:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 382
    :goto_0
    return-object v0

    .line 374
    :pswitch_0
    const-string v0, "motion_tilt_lr"

    .line 375
    goto :goto_0

    .line 377
    :pswitch_1
    const-string v0, "motion_tilt_lr_move_widgets"

    .line 378
    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
