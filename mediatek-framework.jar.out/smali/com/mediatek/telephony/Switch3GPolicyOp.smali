.class public Lcom/mediatek/telephony/Switch3GPolicyOp;
.super Lcom/mediatek/telephony/Switch3GPolicyDefault;
.source "Switch3GPolicyOp.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Switch3GPolicyOp"

.field private static final PROPERTY_TELEPHONY_MODE:Ljava/lang/String; = "ril.telephony.mode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mediatek/telephony/Switch3GPolicyDefault;-><init>()V

    return-void
.end method

.method private getTelephonyMode()I
    .locals 2

    .prologue
    .line 234
    const-string v0, "ril.telephony.mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, nRet:I
    invoke-direct {p0}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getTelephonyMode()I

    move-result v3

    .line 305
    .local v3, telephonyMode:I
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllowedSwitch3GSlots (telephonyMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId3="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId4="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    if-nez p4, :cond_d

    if-nez p5, :cond_d

    .line 309
    invoke-static {p1, p2}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, sim1Op:Ljava/lang/String;
    invoke-static {p1, p3}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, sim2Op:Ljava/lang/String;
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllowedSwitch3GSlots (sim1Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim2Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 316
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP01,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x1

    .line 377
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 320
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_1
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP02,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x2

    goto :goto_0

    .line 324
    :cond_2
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 325
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP01,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x3

    goto :goto_0

    .line 328
    :cond_3
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 329
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP02,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x0

    goto :goto_0

    .line 334
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 337
    :cond_5
    if-nez p2, :cond_6

    if-eqz p3, :cond_c

    .line 338
    :cond_6
    if-eqz p2, :cond_9

    .line 339
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 340
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP01,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x1

    goto :goto_0

    .line 343
    :cond_7
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 344
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check OP02,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    goto :goto_0

    .line 349
    :cond_8
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 352
    :cond_9
    if-eqz p3, :cond_0

    .line 353
    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 354
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check (null),OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 357
    :cond_a
    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 358
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "getAllowedSwitch3GSlots check (null),OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 363
    :cond_b
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 370
    :cond_c
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 374
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_d
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    .line 238
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 240
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getTelephonyMode()I

    move-result v3

    .line 242
    .local v3, telephonyMode:I
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isManualModeChange3GAllowed (telephonyMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId3="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId4="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 246
    invoke-static {p1, p2}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, sim1Op:Ljava/lang/String;
    invoke-static {p1, p3}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, sim2Op:Ljava/lang/String;
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isManualModeChange3GAllowed (sim1Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim2Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 253
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP01,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    .line 297
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 256
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_1
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP02,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :cond_2
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP01,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    .line 262
    :cond_3
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP02,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :cond_4
    if-nez p2, :cond_5

    if-eqz p3, :cond_0

    .line 270
    :cond_5
    if-eqz p2, :cond_7

    .line 271
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 272
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP01,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :cond_6
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check OP02,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    :cond_7
    if-eqz p3, :cond_0

    .line 282
    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 283
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check (null),OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 285
    :cond_8
    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeChange3GAllowed check (null),OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    .line 171
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 173
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getTelephonyMode()I

    move-result v3

    .line 175
    .local v3, telephonyMode:I
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isManualModeEnabled (telephonyMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId3="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId4="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 179
    invoke-static {p1, p2}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, sim1Op:Ljava/lang/String;
    invoke-static {p1, p3}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, sim2Op:Ljava/lang/String;
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isManualModeEnabled (sim1Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim2Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 186
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP01,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x1

    .line 230
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 189
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_1
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP02,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :cond_2
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP01,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    :cond_3
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP02,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :cond_4
    if-nez p2, :cond_5

    if-eqz p3, :cond_0

    .line 203
    :cond_5
    if-eqz p2, :cond_7

    .line 204
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 205
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP01,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :cond_6
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check OP02,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :cond_7
    if-eqz p3, :cond_0

    .line 215
    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 216
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check (null),OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 218
    :cond_8
    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "isManualModeEnabled check (null),OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "ctx"
    .parameter "iccId3GSim"
    .parameter "id3GSim"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    .line 60
    const/4 v0, -0x1

    .line 61
    .local v0, selected:I
    invoke-direct {p0}, Lcom/mediatek/telephony/Switch3GPolicyOp;->getTelephonyMode()I

    move-result v3

    .line 63
    .local v3, telephonyMode:I
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select3GCapability (telephonyMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId3GSim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id3GSim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId3="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccId4="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-nez p6, :cond_0

    if-nez p7, :cond_0

    .line 68
    invoke-static {p1, p4}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, sim1Op:Ljava/lang/String;
    invoke-static {p1, p5}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, sim2Op:Ljava/lang/String;
    const-string v4, "Switch3GPolicyOp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select3GCapability (sim1Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim2Op="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz p4, :cond_8

    if-eqz p5, :cond_8

    .line 75
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check OP01,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v4, -0x1

    if-ne p3, v4, :cond_2

    .line 80
    const/16 v0, 0x15

    .line 160
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 162
    invoke-super/range {p0 .. p7}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 165
    :cond_1
    return v0

    .line 81
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    const/16 v0, 0x15

    goto :goto_0

    .line 84
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_4
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 89
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check OP02,OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v4, -0x1

    if-ne p3, v4, :cond_5

    .line 92
    const/16 v0, 0x15

    goto :goto_0

    .line 93
    :cond_5
    const/4 v4, 0x1

    if-ne p3, v4, :cond_6

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 94
    const/16 v0, 0x15

    goto :goto_0

    .line 96
    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    .line 99
    :cond_7
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check OP02,OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/16 v0, 0x15

    goto :goto_0

    .line 108
    :cond_8
    if-nez p4, :cond_9

    if-eqz p5, :cond_0

    .line 110
    :cond_9
    if-eqz p4, :cond_d

    .line 111
    const-string v4, "OP01"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 113
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check OP01,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v4, -0x1

    if-ne p3, v4, :cond_a

    .line 116
    const/16 v0, 0x15

    goto :goto_0

    .line 117
    :cond_a
    if-nez p3, :cond_b

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 118
    const/16 v0, 0x15

    goto :goto_0

    .line 120
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 123
    :cond_c
    const-string v4, "OP02"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check OP02,(null)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 132
    :cond_d
    if-eqz p5, :cond_0

    .line 134
    const-string v4, "OP01"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 135
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check (null),OP01"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v4, -0x1

    if-ne p3, v4, :cond_e

    .line 138
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 139
    :cond_e
    const/4 v4, 0x1

    if-ne p3, v4, :cond_f

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 140
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 142
    :cond_f
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 145
    :cond_10
    const-string v4, "OP02"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const-string v4, "Switch3GPolicyOp"

    const-string v5, "select3GCapability check (null),OP02"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/16 v0, 0x15

    goto/16 :goto_0
.end method
