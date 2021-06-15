.class public Lcom/google/android/systemui/assist/OpaEnabledSettings;
.super Ljava/lang/Object;
.source "OpaEnabledSettings.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLockSettings:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledSettings;->mContext:Landroid/content/Context;

    const-string p1, "lock_settings"

    .line 46
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledSettings;->mLockSettings:Lcom/android/internal/widget/ILockSettings;

    return-void
.end method


# virtual methods
.method public isAgsaAssistant()Z
    .locals 0

    .line 80
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 81
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaUtils;->isAGSACurrentAssistant(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isLongPressHomeEnabled()Z
    .locals 2

    .line 86
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 87
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledSettings;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "assist_long_press_home_enabled"

    const/4 v1, 0x1

    .line 87
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOpaEligible()Z
    .locals 3

    .line 53
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 54
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledSettings;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 58
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v1, "systemui.google.opa_enabled"

    const/4 v2, 0x0

    .line 54
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isOpaEnabled()Z
    .locals 3

    .line 66
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    const/4 v0, 0x0

    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledSettings;->mLockSettings:Lcom/android/internal/widget/ILockSettings;

    const-string v1, "systemui.google.opa_user_enabled"

    .line 71
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 68
    invoke-interface {p0, v1, v0, v2}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "OpaEnabledSettings"

    const-string v2, "isOpaEnabled RemoteException"

    .line 73
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setOpaEligible(Z)V
    .locals 2

    .line 94
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 95
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledSettings;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 99
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v1, "systemui.google.opa_enabled"

    .line 95
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setOpaEnabled(Z)V
    .locals 2

    .line 104
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 106
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledSettings;->mLockSettings:Lcom/android/internal/widget/ILockSettings;

    const-string v0, "systemui.google.opa_user_enabled"

    .line 109
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 106
    invoke-interface {p0, v0, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OpaEnabledSettings"

    const-string v0, "RemoteException on OPA_USER_ENABLED"

    .line 111
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
