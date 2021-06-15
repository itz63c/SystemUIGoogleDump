.class public Lcom/android/systemui/biometrics/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static containsSensorId(Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/SensorPropertiesInternal;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 114
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 115
    iget v1, v1, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    if-ne v1, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method static getCredentialType(Landroid/content/Context;I)I
    .locals 1

    .line 86
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 p1, 0x10000

    if-eq p0, p1, :cond_1

    const/high16 p1, 0x20000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x30000

    if-eq p0, p1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method static isBiometricAllowed(Landroid/hardware/biometrics/PromptInfo;)Z
    .locals 0

    .line 81
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result p0

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isManagedProfile(Landroid/content/Context;I)Z
    .locals 1

    .line 104
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 105
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    return p0
.end method

.method static isSystem(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "android"

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method static notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    const/16 v0, 0x800

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 72
    invoke-virtual {p1, p1, p1, v0}, Landroid/view/ViewGroup;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method
