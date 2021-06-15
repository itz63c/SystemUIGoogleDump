.class public Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;
.super Ljava/lang/Object;
.source "AccessibilityFloatingMenu.java"

# interfaces
.implements Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mDockTooltipView:Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;

.field private final mEnabledA11yServicesContentObserver:Landroid/database/ContentObserver;

.field private final mFadeOutContentObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

.field private final mMigrationTooltipView:Lcom/android/systemui/accessibility/floatingmenu/MigrationTooltipView;

.field private final mSizeContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$_0UKnM2JmXu1DXTsvkfN_E66GzE(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->showDockTooltipIfNecessary()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-direct {v0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContentObserver:Landroid/database/ContentObserver;

    .line 62
    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$2;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mSizeContentObserver:Landroid/database/ContentObserver;

    .line 70
    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$3;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mFadeOutContentObserver:Landroid/database/ContentObserver;

    .line 79
    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$4;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mEnabledA11yServicesContentObserver:Landroid/database/ContentObserver;

    .line 93
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    .line 95
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/MigrationTooltipView;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/MigrationTooltipView;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMigrationTooltipView:Lcom/android/systemui/accessibility/floatingmenu/MigrationTooltipView;

    .line 96
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mDockTooltipView:Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;)Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;)I
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->getSizeType(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->isFadeEffectEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroid/content/Context;)F
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->getOpacityValue(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method private static getOpacityValue(Landroid/content/Context;)F
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_floating_menu_opacity"

    const v1, 0x3f0ccccd    # 0.55f

    .line 175
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method private static getShapeType(Landroid/content/Context;)I
    .locals 2

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_floating_menu_icon_type"

    const/4 v1, 0x0

    .line 186
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getSizeType(Landroid/content/Context;)I
    .locals 2

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_floating_menu_size"

    const/4 v1, 0x0

    .line 181
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static isFadeEffectEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_floating_menu_fade_enabled"

    const/4 v1, 0x1

    .line 169
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isMigrationTooltipPromptEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_floating_menu_migration_tooltip_prompt"

    const/4 v1, 0x0

    .line 148
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private registerContentObservers()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_targets"

    .line 193
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 192
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_floating_menu_size"

    .line 197
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mSizeContentObserver:Landroid/database/ContentObserver;

    .line 196
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_floating_menu_fade_enabled"

    .line 201
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mFadeOutContentObserver:Landroid/database/ContentObserver;

    .line 200
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_floating_menu_opacity"

    .line 205
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mFadeOutContentObserver:Landroid/database/ContentObserver;

    .line 204
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    .line 209
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mEnabledA11yServicesContentObserver:Landroid/database/ContentObserver;

    .line 208
    invoke-virtual {v0, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private showDockTooltipIfNecessary()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "HasSeenAccessibilityFloatingMenuDockTooltip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isOvalShape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mDockTooltipView:Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;->show()V

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private showMigrationTooltipIfNecessary()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->isMigrationTooltipPromptEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMigrationTooltipView:Lcom/android/systemui/accessibility/floatingmenu/MigrationTooltipView;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->show()V

    .line 142
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "accessibility_floating_menu_migration_tooltip_prompt"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private unregisterContentObservers()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mSizeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mFadeOutContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mEnabledA11yServicesContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->hide()V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMigrationTooltipView:Lcom/android/systemui/accessibility/floatingmenu/MigrationTooltipView;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->hide()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mDockTooltipView:Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;->hide()V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->unregisterContentObservers()V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->isShowing()Z

    move-result p0

    return p0
.end method

.method public show()V
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->show()V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->onTargetsChanged(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->isFadeEffectEnabled(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->getOpacityValue(Landroid/content/Context;)F

    move-result v2

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateOpacityWith(ZF)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->getSizeType(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setSizeType(I)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->getShapeType(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setShapeType(I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->setOnDragEndListener(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$OnDragEndListener;)V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->showMigrationTooltipIfNecessary()V

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->registerContentObservers()V

    return-void
.end method
