.class public Lcom/android/internal/telephony/msim/MSimPhoneFactory;
.super Lcom/android/internal/telephony/PhoneFactory;
.source "MSimPhoneFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneFactory;-><init>()V

    return-void
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 32
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method
