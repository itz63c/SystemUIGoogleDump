.class public Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "TelephonyActivity.java"


# instance fields
.field private mIsCallBlocked:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;-><init>(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const-string v0, "phone"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;I)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->isCallBlocked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mIsCallBlocked:Z

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mIsCallBlocked:Z

    return p1
.end method

.method private isCallBlocked(I)Z
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected isBlocked()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mIsCallBlocked:Z

    return p0
.end method

.method protected onActivate()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->isCallBlocked(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mIsCallBlocked:Z

    .line 34
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method protected onDeactivate()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
