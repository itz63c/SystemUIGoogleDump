.class public Lcom/android/systemui/theme/ThemeOverlayController;
.super Lcom/android/systemui/SystemUI;
.source "ThemeOverlayController.java"


# static fields
.field private static final DEBUG:Z

.field static final USE_LOCK_SCREEN_WALLPAPER:Z = false
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mBgHandler:Landroid/os/Handler;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mIsMonetEnabled:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mLockColors:Landroid/app/WallpaperColors;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field protected mMainWallpaperColor:I

.field private mNeedsOverlayCreation:Z

.field private mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

.field private mPrimaryOverlay:Landroid/content/om/FabricatedOverlay;

.field private mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

.field private final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field private mSystemColors:Landroid/app/WallpaperColors;

.field private final mThemeManager:Lcom/android/systemui/theme/ThemeOverlayApplier;

.field private final mUserManager:Landroid/os/UserManager;

.field protected mWallpaperAccentColor:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$FmDXY7q5wdow4beruMjg4970KUk(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/theme/ThemeOverlayController;->lambda$start$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$PpSDYnJstUOCvuxQtne1Yqu67ak(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;Landroid/app/WallpaperColors;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/theme/ThemeOverlayController;->lambda$start$0(Landroid/app/WallpaperColors;Landroid/app/WallpaperColors;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gR8pdSVC_lbP5x7eZWKmHgSj3rQ(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayController;->lambda$updateThemeOverlays$3(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oQnyJnpEfMjBw5-hGF-5l6Yue2s(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/theme/ThemeOverlayController;->lambda$start$2(Landroid/app/WallpaperColors;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ThemeOverlayController"

    const/4 v1, 0x3

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/theme/ThemeOverlayController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/theme/ThemeOverlayApplier;Lcom/android/systemui/util/settings/SecureSettings;Landroid/app/WallpaperManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    .line 114
    iput p1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperAccentColor:I

    .line 131
    invoke-virtual {p12}, Lcom/android/systemui/statusbar/FeatureFlags;->isMonetEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    .line 132
    iput-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 133
    iput-object p9, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserManager:Landroid/os/UserManager;

    .line 134
    iput-object p5, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 135
    iput-object p4, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 136
    iput-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgHandler:Landroid/os/Handler;

    .line 137
    iput-object p6, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeManager:Lcom/android/systemui/theme/ThemeOverlayApplier;

    .line 138
    iput-object p7, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 139
    iput-object p8, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 140
    iput-object p10, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const-string p1, "ThemeOverlayController"

    .line 141
    invoke-virtual {p11, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/android/systemui/theme/ThemeOverlayController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/theme/ThemeOverlayController;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/theme/ThemeOverlayController;->updateThemeOverlays()V

    return-void
.end method

.method private synthetic lambda$start$0(Landroid/app/WallpaperColors;Landroid/app/WallpaperColors;)V
    .locals 0

    .line 182
    iput-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSystemColors:Landroid/app/WallpaperColors;

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/theme/ThemeOverlayController;->reevaluateSystemTheme()V

    return-void
.end method

.method private synthetic lambda$start$1()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/app/WallpaperColors;Landroid/app/WallpaperColors;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$start$2(Landroid/app/WallpaperColors;I)V
    .locals 2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 207
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSystemColors:Landroid/app/WallpaperColors;

    .line 208
    sget-boolean v0, Lcom/android/systemui/theme/ThemeOverlayController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got new lock colors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " where: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThemeOverlayController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/theme/ThemeOverlayController;->reevaluateSystemTheme()V

    return-void
.end method

.method private static synthetic lambda$updateThemeOverlays$3(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private reevaluateSystemTheme()V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mLockColors:Landroid/app/WallpaperColors;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSystemColors:Landroid/app/WallpaperColors;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    move v2, v0

    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->getDominantColor(Landroid/app/WallpaperColors;)I

    move-result v2

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/systemui/theme/ThemeOverlayController;->getAccentColor(Landroid/app/WallpaperColors;)I

    move-result v0

    .line 231
    :goto_1
    iget v3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    if-ne v3, v2, :cond_2

    iget v3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperAccentColor:I

    if-ne v3, v0, :cond_2

    return-void

    .line 235
    :cond_2
    iput v2, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    .line 236
    iput v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperAccentColor:I

    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->getOverlay(II)Landroid/content/om/FabricatedOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mPrimaryOverlay:Landroid/content/om/FabricatedOverlay;

    .line 240
    iget v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperAccentColor:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->getOverlay(II)Landroid/content/om/FabricatedOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    .line 241
    iget v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/theme/ThemeOverlayController;->getOverlay(II)Landroid/content/om/FabricatedOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    .line 242
    iput-boolean v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    .line 243
    sget-boolean v0, Lcom/android/systemui/theme/ThemeOverlayController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetched overlays. primary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mPrimaryOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " secondary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " neutral: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeOverlayController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/theme/ThemeOverlayController;->updateThemeOverlays()V

    return-void
.end method

.method private updateThemeOverlays()V
    .locals 11

    .line 278
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v2, "theme_customization_overlay_packages"

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 282
    sget-boolean v2, Lcom/android/systemui/theme/ThemeOverlayController;->DEBUG:Z

    const-string v3, "ThemeOverlayController"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateThemeOverlays. Setting: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 284
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 286
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 287
    sget-object v1, Lcom/android/systemui/theme/ThemeOverlayApplier;->THEME_CATEGORIES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 288
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 289
    new-instance v6, Landroid/content/om/OverlayIdentifier;

    .line 290
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    .line 295
    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const-string v1, "android.theme.customization.system_palette"

    .line 300
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayIdentifier;

    .line 301
    iget-boolean v5, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    const/16 v6, 0x10

    const-string v7, "Invalid color definition: "

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 303
    :try_start_1
    invoke-virtual {v4}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 304
    invoke-virtual {p0, v5, v8}, Lcom/android/systemui/theme/ThemeOverlayController;->getOverlay(II)Landroid/content/om/FabricatedOverlay;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mPrimaryOverlay:Landroid/content/om/FabricatedOverlay;

    .line 306
    invoke-virtual {p0, v5, v9}, Lcom/android/systemui/theme/ThemeOverlayController;->getOverlay(II)Landroid/content/om/FabricatedOverlay;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    .line 307
    iput-boolean v9, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    .line 308
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 310
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    const-string v4, "android.theme.customization.accent_color"

    .line 315
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayIdentifier;

    .line 316
    iget-boolean v10, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    if-eqz v10, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 318
    :try_start_2
    invoke-virtual {v5}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 319
    invoke-virtual {p0, v6, v9}, Lcom/android/systemui/theme/ThemeOverlayController;->getOverlay(II)Landroid/content/om/FabricatedOverlay;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    .line 320
    iput-boolean v9, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    .line 321
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 323
    :catch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_4
    :goto_2
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mPrimaryOverlay:Landroid/content/om/FabricatedOverlay;

    if-eqz v5, :cond_5

    .line 331
    invoke-virtual {v5}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    .line 333
    invoke-virtual {v1}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v1

    const-string v5, "android.theme.customization.neutral_palette"

    .line 332
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    if-eqz v1, :cond_6

    .line 337
    invoke-virtual {v1}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-array v1, v9, [Landroid/os/UserHandle;

    .line 340
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    .line 341
    iget-object v4, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 342
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 343
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 346
    :cond_8
    sget-boolean v0, Lcom/android/systemui/theme/ThemeOverlayController;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Applying overlays: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2}, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    .line 348
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    const-string v5, ", "

    .line 349
    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    .line 348
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    if-eqz v0, :cond_a

    .line 352
    iput-boolean v8, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    .line 353
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeManager:Lcom/android/systemui/theme/ThemeOverlayApplier;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/content/om/FabricatedOverlay;

    iget-object v4, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mPrimaryOverlay:Landroid/content/om/FabricatedOverlay;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    aput-object v4, v3, v9

    const/4 v4, 0x2

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/theme/ThemeOverlayApplier;->applyCurrentUserOverlays(Ljava/util/Map;[Landroid/content/om/FabricatedOverlay;Ljava/util/Set;)V

    goto :goto_4

    .line 357
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mThemeManager:Lcom/android/systemui/theme/ThemeOverlayApplier;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/theme/ThemeOverlayApplier;->applyCurrentUserOverlays(Ljava/util/Map;[Landroid/content/om/FabricatedOverlay;Ljava/util/Set;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "USE_LOCK_SCREEN_WALLPAPER=false"

    .line 363
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mLockColors="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mLockColors:Landroid/app/WallpaperColors;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSystemColors="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSystemColors:Landroid/app/WallpaperColors;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mMainWallpaperColor="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mMainWallpaperColor:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mWallpaperAccentColor="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperAccentColor:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mPrimaryOverlay="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mPrimaryOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSecondaryOverlay="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecondaryOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNeutralOverlay="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeutralOverlay:Landroid/content/om/FabricatedOverlay;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsMonetEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mIsMonetEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNeedsOverlayCreation="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mNeedsOverlayCreation:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getAccentColor(Landroid/app/WallpaperColors;)I
    .locals 0

    .line 260
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object p0

    if-nez p0, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 265
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object p0

    .line 267
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    move-result p0

    return p0
.end method

.method protected getDominantColor(Landroid/app/WallpaperColors;)I
    .locals 0

    .line 256
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    move-result p0

    return p0
.end method

.method protected getOverlay(II)Landroid/content/om/FabricatedOverlay;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public start()V
    .locals 5

    .line 146
    sget-boolean v0, Lcom/android/systemui/theme/ThemeOverlayController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ThemeOverlayController"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/theme/ThemeOverlayController$1;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    iget-object v3, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgExecutor:Ljava/util/concurrent/Executor;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "theme_customization_overlay_packages"

    .line 158
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/systemui/theme/ThemeOverlayController$2;

    iget-object v4, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/theme/ThemeOverlayController$2;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/os/Handler;)V

    const/4 v4, -0x1

    .line 157
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController;->mWallpaperManager:Landroid/app/WallpaperManager;

    new-instance v1, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/theme/ThemeOverlayController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/theme/ThemeOverlayController;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v4}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    return-void
.end method
