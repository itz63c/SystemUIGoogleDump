.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/tv/TvGlobalRootComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentBuilder;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$Builder;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalLazyProvider;,
        Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalInstanceProvider;
    }
.end annotation


# static fields
.field private static final ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;


# instance fields
.field private buildInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wrapper/BuildInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private peopleSpaceWidgetManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessibilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityTaskManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/ActivityTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAlarmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAudioManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideColorDisplayManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/ColorDisplayManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectivityManagagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideContentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private provideDevicePolicyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideDisplayIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private provideDisplayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private provideFaceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/face/FaceManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIActivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIActivityTaskManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIAppWidgetServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/appwidget/IAppWidgetService;",
            ">;"
        }
    .end annotation
.end field

.field private provideIBatteryStatsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/IBatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private provideIDreamManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/service/dreams/IDreamManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIPackageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/IPackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIStatusBarServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field

.field private provideIWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideInputMethodManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/inputmethod/InputMethodManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyguardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLatencyTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/LatencyTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideLauncherAppsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideMediaRouter2ManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/media/MediaRouter2Manager;",
            ">;"
        }
    .end annotation
.end field

.field private provideMediaSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/media/session/MediaSessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNetworkScoreManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/NetworkScoreManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideOverlayManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/om/OverlayManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePackageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePackageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private providePermissionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/permission/PermissionManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePowerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideResourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideShortcutManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/ShortcutManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideTelecomManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/telecom/TelecomManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideTelephonyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideTrustManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/trust/TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideUiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideVibratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field private provideViewConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private provideWallpaperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideWifiManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesFingerprintManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1238
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/dagger/GlobalModule;Landroid/content/Context;)V
    .locals 0

    .line 1348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1349
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1350
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->initialize(Lcom/android/systemui/dagger/GlobalModule;Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/GlobalModule;Landroid/content/Context;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V
    .locals 0

    .line 1233
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;-><init>(Lcom/android/systemui/dagger/GlobalModule;Landroid/content/Context;)V

    return-void
.end method

.method private static absentJdkOptionalProvider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 1438
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Landroid/content/res/Resources;
    .locals 0

    .line 1233
    invoke-direct {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Landroid/content/Context;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->buildInfoProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesFingerprintManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideActivityTaskManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideFaceManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIPackageManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideViewConfigurationProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesSensorManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideTrustManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->peopleSpaceWidgetManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideShortcutManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIActivityTaskManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideNetworkScoreManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideWallpaperManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDisplayIdProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIBatteryStatsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMediaSessionManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMediaRouter2ManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideOverlayManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideColorDisplayManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePermissionManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$900()Ljavax/inject/Provider;
    .locals 1

    .line 1233
    invoke-static {}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->absentJdkOptionalProvider()Ljavax/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideInputMethodManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static builder()Lcom/android/systemui/tv/TvGlobalRootComponent$Builder;
    .locals 2

    .line 1354
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$Builder;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/android/systemui/dagger/GlobalModule;Landroid/content/Context;)V
    .locals 1

    .line 1363
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIWindowManagerFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIWindowManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 1364
    invoke-static {p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    .line 1365
    invoke-static {}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;->create()Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainHandlerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainHandlerFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 1366
    invoke-static {}, Lcom/android/systemui/dagger/GlobalModule_ProvideUiEventLoggerFactory;->create()Lcom/android/systemui/dagger/GlobalModule_ProvideUiEventLoggerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 1367
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidePackageManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidePackageManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    .line 1368
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIStatusBarServiceFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIStatusBarServiceFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 1369
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideWindowManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideWindowManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 1370
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideLauncherAppsFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideLauncherAppsFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 1371
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideContentResolverFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideContentResolverFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    .line 1372
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideUserManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideUserManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    .line 1373
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideResourcesFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideResourcesFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    .line 1374
    invoke-static {}, Lcom/android/systemui/util/wrapper/BuildInfo_Factory;->create()Lcom/android/systemui/util/wrapper/BuildInfo_Factory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->buildInfoProvider:Ljavax/inject/Provider;

    .line 1375
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIActivityManagerFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIActivityManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    .line 1376
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideNotificationManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideNotificationManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    .line 1377
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainExecutorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainExecutorFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 1378
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideDevicePolicyManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideDevicePolicyManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    .line 1379
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideKeyguardManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideKeyguardManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    .line 1380
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideAudioManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideAudioManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    .line 1381
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideActivityTaskManagerFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideActivityTaskManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideActivityTaskManagerProvider:Ljavax/inject/Provider;

    .line 1382
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidesFingerprintManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidesFingerprintManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesFingerprintManagerProvider:Ljavax/inject/Provider;

    .line 1383
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideFaceManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideFaceManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideFaceManagerProvider:Ljavax/inject/Provider;

    .line 1384
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideSensorPrivacyManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideSensorPrivacyManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    .line 1385
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIPackageManagerFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIPackageManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIPackageManagerProvider:Ljavax/inject/Provider;

    .line 1386
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidePowerManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidePowerManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    .line 1387
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/android/systemui/dagger/GlobalModule_ProvideDisplayMetricsFactory;->create(Lcom/android/systemui/dagger/GlobalModule;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/GlobalModule_ProvideDisplayMetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 1388
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideViewConfigurationFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideViewConfigurationFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideViewConfigurationProvider:Ljavax/inject/Provider;

    .line 1389
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidesSensorManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidesSensorManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providesSensorManagerProvider:Ljavax/inject/Provider;

    .line 1390
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideTrustManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideTrustManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideTrustManagerProvider:Ljavax/inject/Provider;

    .line 1391
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideAccessibilityManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideAccessibilityManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    .line 1392
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidePackageManagerWrapperFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidePackageManagerWrapperFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 1393
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIDreamManagerFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIDreamManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    .line 1394
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIAppWidgetServiceFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIAppWidgetServiceProvider:Ljavax/inject/Provider;

    .line 1395
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p2, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->peopleSpaceWidgetManagerProvider:Ljavax/inject/Provider;

    .line 1396
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideShortcutManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideShortcutManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideShortcutManagerProvider:Ljavax/inject/Provider;

    .line 1397
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIActivityTaskManagerFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIActivityTaskManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIActivityTaskManagerProvider:Ljavax/inject/Provider;

    .line 1398
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideConnectivityManagagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideConnectivityManagagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    .line 1399
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideTelephonyManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideTelephonyManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    .line 1400
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideWifiManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideWifiManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    .line 1401
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideNetworkScoreManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideNetworkScoreManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideNetworkScoreManagerProvider:Ljavax/inject/Provider;

    .line 1402
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideAlarmManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideAlarmManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 1403
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideWallpaperManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideWallpaperManagerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideWallpaperManagerProvider:Ljavax/inject/Provider;

    .line 1404
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideTelecomManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideTelecomManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    .line 1405
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideDisplayIdFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideDisplayIdFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDisplayIdProvider:Ljavax/inject/Provider;

    .line 1406
    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIBatteryStatsFactory;->create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideIBatteryStatsFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIBatteryStatsProvider:Ljavax/inject/Provider;

    .line 1407
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideMediaSessionManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideMediaSessionManagerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMediaSessionManagerProvider:Ljavax/inject/Provider;

    .line 1408
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideMediaRouter2ManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideMediaRouter2ManagerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMediaRouter2ManagerProvider:Ljavax/inject/Provider;

    .line 1409
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    .line 1410
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideOverlayManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideOverlayManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideOverlayManagerProvider:Ljavax/inject/Provider;

    .line 1411
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideLatencyTrackerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideLatencyTrackerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    .line 1412
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInputMethodManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideInputMethodManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideInputMethodManagerProvider:Ljavax/inject/Provider;

    .line 1413
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideActivityManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideActivityManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    .line 1414
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideColorDisplayManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideColorDisplayManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideColorDisplayManagerProvider:Ljavax/inject/Provider;

    .line 1415
    iget-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidePermissionManagerFactory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/dagger/FrameworkServicesModule_ProvidePermissionManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePermissionManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private mainResources()Landroid/content/res/Resources;
    .locals 0

    .line 1358
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideResourcesFactory;->provideResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createThreadFactory()Lcom/android/systemui/util/concurrency/ThreadFactory;
    .locals 0

    .line 1420
    invoke-static {}, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl_Factory;->newInstance()Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1225
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->getSysUIComponent()Lcom/android/systemui/tv/TvSysUIComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getSysUIComponent()Lcom/android/systemui/tv/TvSysUIComponent$Builder;
    .locals 2

    .line 1430
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentBuilder;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic getWMComponentBuilder()Lcom/android/systemui/dagger/WMComponent$Builder;
    .locals 0

    .line 1225
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->getWMComponentBuilder()Lcom/android/systemui/tv/TvWMComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getWMComponentBuilder()Lcom/android/systemui/tv/TvWMComponent$Builder;
    .locals 2

    .line 1425
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentBuilder;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V

    return-object v0
.end method
