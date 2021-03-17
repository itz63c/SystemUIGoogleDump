.class public Lcom/android/systemui/statusbar/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# instance fields
.field private final mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlagReader;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/FeatureFlags;->mFlagReader:Lcom/android/systemui/flags/FeatureFlagReader;

    return-void
.end method


# virtual methods
.method public isKeyguardLayoutEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMonetEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNewNotifPipelineEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNewNotifPipelineRenderingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPeopleTileEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isQSLabelsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShadeOpaque()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isToastStyleEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTwoColumnNotificationShadeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public useNewBrightnessSlider()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public useNewLockscreenAnimations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
