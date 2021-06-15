.class public Lcom/android/systemui/statusbar/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# instance fields
.field private final mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlagReader;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    return-void
.end method


# virtual methods
.method public isAlarmTileAvailable()Z
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_alarm_tile:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isChargingRippleEnabled()Z
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_charging_ripple:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isKeyguardLayoutEnabled()Z
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_keyguard_layout:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isMonetEnabled()Z
    .locals 1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_monet:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isNewNotifPipelineEnabled()Z
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_notification_pipeline2:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isNewNotifPipelineRenderingEnabled()Z
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_notification_pipeline2_rendering:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isOngoingCallStatusBarChipEnabled()Z
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_ongoing_call_status_bar_chip:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isPMLiteEnabled()Z
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_pm_lite:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isQuickAccessWalletEnabled()Z
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_wallet:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isSmartspaceEnabled()Z
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_smartspace:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isToastStyleEnabled()Z
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_toast_style:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isTwoColumnNotificationShadeEnabled()Z
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_notification_twocolumn:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public useNewLockscreenAnimations()Z
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    sget v0, Lcom/android/systemui/R$bool;->flag_lockscreen_animations:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagReader;->isEnabled(I)Z

    move-result p0

    return p0
.end method
