.class public Lcom/android/systemui/theme/ThemeOverlayApplier;
.super Ljava/lang/Object;
.source "ThemeOverlayApplier.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field static final ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field private static final DEBUG:Z

.field static final OVERLAY_CATEGORY_FONT:Ljava/lang/String; = "android.theme.customization.font"

.field static final OVERLAY_CATEGORY_ICON_ANDROID:Ljava/lang/String; = "android.theme.customization.icon_pack.android"

.field static final OVERLAY_CATEGORY_ICON_LAUNCHER:Ljava/lang/String; = "android.theme.customization.icon_pack.launcher"

.field static final OVERLAY_CATEGORY_ICON_SETTINGS:Ljava/lang/String; = "android.theme.customization.icon_pack.settings"

.field static final OVERLAY_CATEGORY_ICON_SYSUI:Ljava/lang/String; = "android.theme.customization.icon_pack.systemui"

.field static final OVERLAY_CATEGORY_ICON_THEME_PICKER:Ljava/lang/String; = "android.theme.customization.icon_pack.themepicker"

.field static final OVERLAY_CATEGORY_SHAPE:Ljava/lang/String; = "android.theme.customization.adaptive_icon_shape"

.field static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field static final SYSTEM_USER_CATEGORIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field static final THEME_CATEGORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryToTargetPackage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLauncherPackage:Ljava/lang/String;

.field private final mOverlayManager:Landroid/content/om/OverlayManager;

.field private final mTargetPackageToCategories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mThemePickerPackage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$XhURohUA1moHFgNQ-KXgaXK07BQ(Landroid/content/om/OverlayInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/theme/ThemeOverlayApplier;->lambda$applyCurrentUserOverlays$4(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$d4PSOW1eoqq-PdPEQ6dkC9I7Yc0(Lcom/android/systemui/theme/ThemeOverlayApplier;Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayApplier;->lambda$applyCurrentUserOverlays$6(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sOPIP5hRgCnzbmMD4JdWyKfy9K4(Lcom/android/systemui/theme/ThemeOverlayApplier;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/theme/ThemeOverlayApplier;->lambda$applyCurrentUserOverlays$1(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sh5RyxajOMCOpFGThy0Ttfb-uEI(Lcom/android/systemui/theme/ThemeOverlayApplier;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayApplier;->lambda$applyCurrentUserOverlays$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u2xHCXRhSQI0xPXNTidsDd-KbUQ(Lcom/android/systemui/theme/ThemeOverlayApplier;Landroid/content/om/OverlayInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayApplier;->lambda$applyCurrentUserOverlays$2(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wIbAEJ-OwSKvR-noNuA_m5M3L8Q(Landroid/content/om/OverlayInfo;)Landroid/util/Pair;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/theme/ThemeOverlayApplier;->lambda$applyCurrentUserOverlays$5(Landroid/content/om/OverlayInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xuQwtDr6tptHKsrx53kD5DPFPuE(Ljava/util/Set;Landroid/content/om/OverlayInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayApplier;->lambda$applyCurrentUserOverlays$3(Ljava/util/Set;Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 10

    const-string v0, "ThemeOverlayApplier"

    const/4 v1, 0x3

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->DEBUG:Z

    const-string v1, "android.theme.customization.system_palette"

    const-string v2, "android.theme.customization.icon_pack.launcher"

    const-string v3, "android.theme.customization.adaptive_icon_shape"

    const-string v4, "android.theme.customization.font"

    const-string v5, "android.theme.customization.accent_color"

    const-string v6, "android.theme.customization.icon_pack.android"

    const-string v7, "android.theme.customization.icon_pack.systemui"

    const-string v8, "android.theme.customization.icon_pack.settings"

    const-string v9, "android.theme.customization.icon_pack.themepicker"

    .line 95
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->THEME_CATEGORIES:Ljava/util/List;

    const-string v1, "android.theme.customization.system_palette"

    const-string v2, "android.theme.customization.accent_color"

    const-string v3, "android.theme.customization.font"

    const-string v4, "android.theme.customization.adaptive_icon_shape"

    const-string v5, "android.theme.customization.icon_pack.android"

    const-string v6, "android.theme.customization.icon_pack.systemui"

    .line 108
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->SYSTEM_USER_CATEGORIES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/om/OverlayManager;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/dump/DumpManager;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mTargetPackageToCategories:Ljava/util/Map;

    .line 119
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mCategoryToTargetPackage:Ljava/util/Map;

    move-object/from16 v5, p1

    .line 127
    iput-object v5, v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mOverlayManager:Landroid/content/om/OverlayManager;

    move-object/from16 v5, p2

    .line 128
    iput-object v5, v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mExecutor:Ljava/util/concurrent/Executor;

    .line 129
    iput-object v1, v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mLauncherPackage:Ljava/lang/String;

    .line 130
    iput-object v2, v0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mThemePickerPackage:Ljava/lang/String;

    const-string v5, "android.theme.customization.system_palette"

    const-string v6, "android.theme.customization.accent_color"

    const-string v7, "android.theme.customization.font"

    const-string v8, "android.theme.customization.adaptive_icon_shape"

    const-string v9, "android.theme.customization.icon_pack.android"

    .line 131
    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v5

    const-string v10, "android"

    invoke-interface {v3, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "android.theme.customization.icon_pack.systemui"

    .line 134
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    .line 135
    invoke-static {v11}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v11

    const-string v12, "com.android.systemui"

    .line 134
    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "android.theme.customization.icon_pack.settings"

    .line 136
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v13

    .line 137
    invoke-static {v13}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v13

    const-string v14, "com.android.settings"

    .line 136
    invoke-interface {v3, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "android.theme.customization.icon_pack.launcher"

    .line 138
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v15

    .line 139
    invoke-static {v15}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v15

    .line 138
    invoke-interface {v3, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "android.theme.customization.icon_pack.themepicker"

    .line 140
    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v16

    .line 141
    invoke-static/range {v16 .. v16}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 140
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-interface {v4, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-interface {v4, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {v4, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-interface {v4, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-interface {v4, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-interface {v4, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ThemeOverlayApplier"

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    .line 151
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method private synthetic lambda$applyCurrentUserOverlays$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mCategoryToTargetPackage:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$applyCurrentUserOverlays$1(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 169
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mOverlayManager:Landroid/content/om/OverlayManager;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 170
    invoke-virtual {p0, p2, v0}, Landroid/content/om/OverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 169
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$applyCurrentUserOverlays$2(Landroid/content/om/OverlayInfo;)Z
    .locals 1

    .line 173
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mTargetPackageToCategories:Ljava/util/Map;

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyCurrentUserOverlays$3(Ljava/util/Set;Landroid/content/om/OverlayInfo;)Z
    .locals 0

    .line 174
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyCurrentUserOverlays$4(Landroid/content/om/OverlayInfo;)Z
    .locals 0

    .line 175
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyCurrentUserOverlays$5(Landroid/content/om/OverlayInfo;)Landroid/util/Pair;
    .locals 2

    .line 176
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private synthetic lambda$applyCurrentUserOverlays$6(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .locals 1

    .line 200
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mOverlayManager:Landroid/content/om/OverlayManager;

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/om/OverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ThemeOverlayApplier"

    const-string v0, "setEnabled failed"

    .line 202
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setEnabled(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayIdentifier;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/OverlayManagerTransaction$Builder;",
            "Landroid/content/om/OverlayIdentifier;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;Z)V"
        }
    .end annotation

    .line 215
    sget-boolean p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 216
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEnabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " category: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ThemeOverlayApplier"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 220
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, p2, p5, v0}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    goto :goto_0

    .line 222
    :cond_1
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->SYSTEM_USER_CATEGORIES:Ljava/util/Set;

    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 223
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {p1, p2, p5, p0}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    :cond_2
    return-void
.end method


# virtual methods
.method applyCurrentUserOverlays(Ljava/util/Map;[Landroid/content/om/FabricatedOverlay;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/om/OverlayIdentifier;",
            ">;[",
            "Landroid/content/om/FabricatedOverlay;",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/systemui/theme/ThemeOverlayApplier;->THEME_CATEGORIES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 164
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 165
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/theme/ThemeOverlayApplier;)V

    .line 166
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 167
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v3, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/theme/ThemeOverlayApplier;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 171
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/theme/ThemeOverlayApplier;)V

    .line 172
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;)V

    .line 174
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda6;

    .line 175
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda3;

    .line 176
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 177
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/theme/ThemeOverlayApplier;->getTransactionBuilder()Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v7

    if-eqz p2, :cond_0

    .line 181
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 182
    invoke-virtual {v7, v3}, Landroid/content/om/OverlayManagerTransaction$Builder;->registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_0
    sget-object p2, Lcom/android/systemui/theme/ThemeOverlayApplier;->THEME_CATEGORIES:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 188
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/om/OverlayIdentifier;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v7

    move-object v5, p3

    .line 190
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/theme/ThemeOverlayApplier;->setEnabled(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayIdentifier;Ljava/lang/String;Ljava/util/Set;Z)V

    goto :goto_1

    .line 193
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 194
    new-instance v3, Landroid/content/om/OverlayIdentifier;

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v7

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/theme/ThemeOverlayApplier;->setEnabled(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayIdentifier;Ljava/lang/String;Ljava/util/Set;Z)V

    goto :goto_2

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v7}, Lcom/android/systemui/theme/ThemeOverlayApplier-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/theme/ThemeOverlayApplier;Landroid/content/om/OverlayManagerTransaction$Builder;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mTargetPackageToCategories="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mTargetPackageToCategories:Ljava/util/Map;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mCategoryToTargetPackage="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayApplier;->mCategoryToTargetPackage:Ljava/util/Map;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getTransactionBuilder()Landroid/content/om/OverlayManagerTransaction$Builder;
    .locals 0

    .line 209
    new-instance p0, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {p0}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    return-object p0
.end method
