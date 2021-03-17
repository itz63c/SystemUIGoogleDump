.class public Lcom/google/android/systemui/SystemUIGoogleFactory;
.super Lcom/android/systemui/SystemUIFactory;
.source "SystemUIGoogleFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/systemui/SystemUIFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildGlobalRootComponent(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent;
    .locals 0

    .line 25
    invoke-static {}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent;->builder()Lcom/google/android/systemui/dagger/SysUIGoogleGlobalRootComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->context(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->build()Lcom/android/systemui/dagger/GlobalRootComponent;

    move-result-object p0

    return-object p0
.end method

.method public createBackGestureTfClassifierProvider(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;
    .locals 0

    .line 39
    new-instance p0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object p0
.end method

.method public createScreenshotNotificationSmartActionsProvider(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;
    .locals 0

    .line 33
    new-instance p0, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/screenshot/ScreenshotNotificationSmartActionsProviderGoogle;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    return-object p0
.end method
