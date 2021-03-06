.class public Lcom/google/android/systemui/elmyra/actions/SilenceCall;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source "SilenceCall.java"


# instance fields
.field private mIsPhoneRinging:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

.field private mSilenceSettingEnabled:Z

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$VC4lM4QeKT6X2f7Mf7xIejlnjF8(Lcom/google/android/systemui/elmyra/actions/SilenceCall;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 23
    new-instance v0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;-><init>(Lcom/google/android/systemui/elmyra/actions/SilenceCall;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 38
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 39
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 41
    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->updatePhoneStateListener()V

    .line 42
    new-instance p1, Lcom/google/android/systemui/elmyra/UserContentObserver;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "assist_gesture_silence_alerts_enabled"

    .line 44
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/elmyra/actions/SilenceCall-$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/elmyra/actions/SilenceCall-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/actions/SilenceCall;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/elmyra/actions/SilenceCall;I)Z
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->isPhoneRinging(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/elmyra/actions/SilenceCall;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mIsPhoneRinging:Z

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/elmyra/actions/SilenceCall;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mIsPhoneRinging:Z

    return p1
.end method

.method private isPhoneRinging(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->updatePhoneStateListener()V

    return-void
.end method

.method private updatePhoneStateListener()V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_gesture_silence_alerts_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 49
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 55
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mSilenceSettingEnabled:Z

    if-eq v2, v0, :cond_2

    .line 56
    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mSilenceSettingEnabled:Z

    if-eqz v2, :cond_1

    const/16 v1, 0x20

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 63
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->isPhoneRinging(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mIsPhoneRinging:Z

    .line 65
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_2
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mSilenceSettingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mIsPhoneRinging:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mSilenceSettingEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mSilenceSettingEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
