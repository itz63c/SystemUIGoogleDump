.class public abstract Lcom/android/systemui/qs/SecureSetting;
.super Landroid/database/ContentObserver;
.source "SecureSetting.java"


# instance fields
.field private mListening:Z

.field private mObservedValue:I

.field private mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field private final mSettingName:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 34
    iput p2, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    .line 41
    iput-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    .line 43
    iput p4, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method protected abstract handleValueChanged(IZ)V
.end method

.method public onChange(Z)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p1

    .line 71
    iget v0, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/SecureSetting;->handleValueChanged(IZ)V

    .line 72
    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 57
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    .line 60
    iget-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    .line 61
    invoke-interface {p1, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    .line 60
    invoke-interface {p1, v1, v0, p0, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 64
    iput v0, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    :goto_0
    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    .line 77
    iget-boolean p1, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    invoke-interface {v0, v1, p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    return-void
.end method
