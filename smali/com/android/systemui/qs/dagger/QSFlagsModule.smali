.class public interface abstract Lcom/android/systemui/qs/dagger/QSFlagsModule;
.super Ljava/lang/Object;
.source "QSFlagsModule.java"


# direct methods
.method public static isReduceBrightColorsAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 47
    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static provideQSFlag(Lcom/android/systemui/statusbar/FeatureFlags;)Z
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FeatureFlags;->isQSLabelsEnabled()Z

    move-result p0

    return p0
.end method
