.class public Lcom/android/systemui/dagger/FrameworkServicesModule;
.super Ljava/lang/Object;
.source "FrameworkServicesModule.java"


# direct methods
.method static provideAccessibilityManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .line 93
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static provideActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 1

    .line 99
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method static provideActivityTaskManager()Landroid/app/ActivityTaskManager;
    .locals 1

    .line 159
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method static provideAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1

    .line 105
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method static provideAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    .line 111
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method static provideColorDisplayManager(Landroid/content/Context;)Landroid/hardware/display/ColorDisplayManager;
    .locals 1

    .line 117
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/ColorDisplayManager;

    return-object p0
.end method

.method static provideConnectivityManagager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    .line 123
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static provideContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 0

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static provideDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .line 135
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static provideDisplayId(Landroid/content/Context;)I
    .locals 0

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    return p0
.end method

.method static provideFaceManager(Landroid/content/Context;)Landroid/hardware/face/FaceManager;
    .locals 1

    .line 186
    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/FaceManager;

    return-object p0
.end method

.method static provideIActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .line 153
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method static provideIActivityTaskManager()Landroid/app/IActivityTaskManager;
    .locals 1

    .line 165
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method static provideIBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .locals 1

    const-string v0, "batterystats"

    .line 172
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    return-object v0
.end method

.method static provideIDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    const-string v0, "dreams"

    .line 179
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method static provideIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    const-string v0, "package"

    .line 213
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method static provideIStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    const-string v0, "statusbar"

    .line 220
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static provideIWallPaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    const-string/jumbo v0, "wallpaper"

    .line 227
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method static provideIWindowManager()Landroid/view/IWindowManager;
    .locals 1

    .line 233
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method static provideInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 200
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static provideKeyguardManager(Landroid/content/Context;)Landroid/app/KeyguardManager;
    .locals 1

    .line 239
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static provideLatencyTracker(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;
    .locals 0

    .line 245
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    return-object p0
.end method

.method static provideLauncherApps(Landroid/content/Context;)Landroid/content/pm/LauncherApps;
    .locals 1

    .line 251
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method static provideMediaRouter2Manager(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;
    .locals 0

    .line 256
    invoke-static {p0}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object p0

    return-object p0
.end method

.method static provideMediaSessionManager(Landroid/content/Context;)Landroid/media/session/MediaSessionManager;
    .locals 1

    .line 261
    const-class v0, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method static provideNetworkScoreManager(Landroid/content/Context;)Landroid/net/NetworkScoreManager;
    .locals 1

    .line 267
    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkScoreManager;

    return-object p0
.end method

.method static provideNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1

    .line 273
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method static provideOverlayManager(Landroid/content/Context;)Landroid/content/om/OverlayManager;
    .locals 1

    .line 390
    const-class v0, Landroid/content/om/OverlayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/om/OverlayManager;

    return-object p0
.end method

.method static providePackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method static providePackageManagerWrapper()Lcom/android/systemui/shared/system/PackageManagerWrapper;
    .locals 1

    .line 285
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    return-object v0
.end method

.method static providePermissionManager(Landroid/content/Context;)Landroid/permission/PermissionManager;
    .locals 1

    .line 402
    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    return-object p0
.end method

.method static providePowerManager(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 1

    .line 292
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method static provideResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static provideSensorPrivacyManager(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;
    .locals 1

    .line 316
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManager;

    return-object p0
.end method

.method static provideShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;
    .locals 1

    .line 322
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    return-object p0
.end method

.method static provideSmartspaceManager(Landroid/content/Context;)Landroid/app/smartspace/SmartspaceManager;
    .locals 1

    .line 408
    const-class v0, Landroid/app/smartspace/SmartspaceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/smartspace/SmartspaceManager;

    return-object p0
.end method

.method static provideStatsManager(Landroid/content/Context;)Landroid/app/StatsManager;
    .locals 1

    .line 328
    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatsManager;

    return-object p0
.end method

.method static provideSubcriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1

    .line 334
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static provideTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1

    .line 341
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method static provideTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 347
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static provideTrustManager(Landroid/content/Context;)Landroid/app/trust/TrustManager;
    .locals 1

    .line 353
    const-class v0, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    return-object p0
.end method

.method static provideUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1

    .line 372
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method static provideVibrator(Landroid/content/Context;)Landroid/os/Vibrator;
    .locals 1

    .line 360
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    return-object p0
.end method

.method static provideViewConfiguration(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 0

    .line 366
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static provideWallpaperManager(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1

    .line 377
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static provideWifiManager(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1

    .line 384
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static provideWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    .line 396
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method static providesFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    .line 194
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static providesSensorManager(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .locals 1

    .line 310
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    return-object p0
.end method
