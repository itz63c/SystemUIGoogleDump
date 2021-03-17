.class public Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;
.super Ljava/lang/Object;
.source "BrightnessControllerSettings.java"


# instance fields
.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    return-void
.end method


# virtual methods
.method useMirrorOnThickSlider()Z
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;->useThickSlider()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method useThickSlider()Z
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessControllerSettings;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FeatureFlags;->useNewBrightnessSlider()Z

    move-result p0

    return p0
.end method
