.class public Lcom/android/systemui/volume/VolumeDialogImpl;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;,
        Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;,
        Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/VolumeDialogImpl$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mActiveStream:I

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

.field private mAutomute:Z

.field private final mChangeVolumeRowTintWhenInactive:Z

.field private mConfigChanged:Z

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/VolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

.field private mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

.field private final mDialogHideAnimationDurationMs:I

.field private mDialogRowsView:Landroid/view/ViewGroup;

.field private mDialogRowsViewBackground:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

.field private final mDialogShowAnimationDurationMs:I

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private final mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

.field private mHasSeenODICaptionsTooltip:Z

.field private mHovering:Z

.field private mIsAnimatingDismiss:Z

.field private mIsRingerDrawerOpen:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

.field private mODICaptionsTooltipView:Landroid/view/View;

.field private mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

.field private mODICaptionsView:Landroid/view/ViewGroup;

.field private mPrevActiveStream:I

.field private mRinger:Landroid/view/ViewGroup;

.field private mRingerAndRowsContainer:Landroid/view/View;

.field private mRingerAndRowsContainerBackground:Landroid/graphics/drawable/Drawable;

.field private final mRingerCount:I

.field private mRingerDrawerContainer:Landroid/view/ViewGroup;

.field private mRingerDrawerIconAnimatingDeselected:Landroid/widget/ImageView;

.field private mRingerDrawerIconAnimatingSelected:Landroid/widget/ImageView;

.field private final mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

.field private final mRingerDrawerItemSize:I

.field private mRingerDrawerMute:Landroid/view/ViewGroup;

.field private mRingerDrawerMuteIcon:Landroid/widget/ImageView;

.field private mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

.field private mRingerDrawerNormal:Landroid/view/ViewGroup;

.field private mRingerDrawerNormalIcon:Landroid/widget/ImageView;

.field private mRingerDrawerVibrate:Landroid/view/ViewGroup;

.field private mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

.field private mRingerIcon:Landroid/widget/ImageButton;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mSelectedRingerContainer:Landroid/view/ViewGroup;

.field private mSelectedRingerIcon:Landroid/widget/ImageView;

.field private mSettingsIcon:Landroid/widget/ImageButton;

.field private mSettingsView:Landroid/view/View;

.field private mShowA11yStream:Z

.field private mShowActiveStreamOnly:Z

.field private final mShowLowMediaVolumeIcon:Z

.field private final mShowVibrate:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private final mUseBackgroundBlur:Z

.field private mWindow:Landroid/view/Window;

.field private mZenIcon:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$65qX4hUSfWCslUVDsb2at6Pd8x0(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$showRingerDrawer$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$9b-c-4vwD_pNig-tCDP_YrIeUaA(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$getSinglePressFor$21(Landroid/widget/ImageButton;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DyaX8F4M8jXEGpG9YWlR2LDbwRY(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FTnmISwX7H3BRqLO5RzXTva5EMc(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$showCaptionsTooltip$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H7Vav3Gg8482yEWXS-_i4IDhvo8(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initRow$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$HkX5nasoBh-2AJxzMUPz19gEhfw(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initRingerH$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HyW6tDngDyRrnxkCTf2DikvsSeQ(Lcom/android/systemui/volume/VolumeDialogImpl;IILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$new$0(IILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MT7i0PacQs98wqOZ6XfY5A8Vbt0(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NZzdhvG_oDn2MMd6OTVkXKJRTZg(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$showCaptionsTooltip$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$OAcEdErP9Giyy2okZIuK7beoZ28(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initSettingsH$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rva1HQIzAGbdWvqSNkfUnj9EowY(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initDialog$4(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VLEq7abVqw87obgALDHObBKHVAo(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initDialog$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$WMay-I9fG-hadREyiDUwiTtUvbQ(Landroid/widget/ImageButton;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$getSingleUnpressFor$22(Landroid/widget/ImageButton;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_awe_YKppyJm4lKMkq-KjvWLFsA(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$dismissH$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$hHuqrsYEk7uOeCMf3L3BqhDDIT0(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initODICaptionsH$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$jsXAA5OcpISm8IMcZp_cVxiiG6I(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$dismissH$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$kKbGZepMRKoI-uscA_XyzYIKj3g(Lcom/android/systemui/volume/VolumeDialogImpl;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$setupRingerDrawer$8(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mjlzccsh87HshUlk-NEMk4XuYqo(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$hideCaptionsTooltip$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$o681-KMo9ft5t-JF4Gnl4jBQBY8(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$updateCaptionsIcon$18(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uLxAk3kuBuRojTOjuEenIywoA7c(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$setupRingerDrawer$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w_utYPPWwXqrSoO_rh01H8Vk-3k(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$setupRingerDrawer$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xrvBLM3Cxgthva1-VPX_RpKFexo(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$hideRingerDrawer$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$zFqww5-0WyVlvM05DITBmr0y_eI(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initRow$6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 135
    const-class v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 160
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 188
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    .line 196
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    .line 198
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 208
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 212
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 213
    new-instance v2, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    const/4 v2, 0x1

    .line 220
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 221
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 230
    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 1744
    new-instance v2, Lcom/android/systemui/volume/VolumeDialogImpl$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    .line 237
    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget v3, Lcom/android/systemui/R$style;->volume_dialog_theme:I

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 239
    const-class v3, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/VolumeDialogController;

    iput-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const-string v4, "keyguard"

    .line 240
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    const-string v4, "activity"

    .line 241
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 242
    const-class v4, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 243
    const-class v4, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showActiveStreamOnly()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowActiveStreamOnly:Z

    const-string v4, "HasSeenODICaptionsTooltip"

    .line 246
    invoke-static {p1, v4, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 248
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$bool;->config_showLowMediaVolumeIcon:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowLowMediaVolumeIcon:Z

    .line 250
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$bool;->config_changeVolumeRowTintWhenInactive:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mChangeVolumeRowTintWhenInactive:Z

    .line 252
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$integer;->config_dialogShowAnimationDurationMs:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogShowAnimationDurationMs:I

    .line 254
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$integer;->config_dialogHideAnimationDurationMs:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogHideAnimationDurationMs:I

    .line 256
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$bool;->config_volumeDialogUseBackgroundBlur:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mUseBackgroundBlur:Z

    if-eqz p1, :cond_0

    .line 259
    sget p1, Lcom/android/systemui/R$color;->volume_dialog_background_color_above_blur:I

    invoke-virtual {v2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 261
    sget v1, Lcom/android/systemui/R$color;->volume_dialog_background_color:I

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 263
    new-instance v4, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda22;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda22;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;II)V

    iput-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    .line 269
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->volume_ringer_drawer_item_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    .line 271
    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowVibrate:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 274
    :cond_1
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/util/function/Consumer;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCrossWindowBlurEnabledListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/Window;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/widget/ImageView;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconAnimatingDeselected:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconAnimatingDeselected:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/widget/ImageView;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconAnimatingSelected:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconAnimatingSelected:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsViewBackground:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsViewBackground:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumeDialogImpl;)Ljava/lang/Object;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p0
.end method

.method static synthetic access$4302(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/volume/VolumeDialogImpl;ZZ)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateODICaptionsH(ZZ)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/VolumeDialogImpl;IZ)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    return p0
.end method

.method static synthetic access$5100()Ljava/lang/String;
    .locals 1

    .line 132
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/widget/SeekBar;I)I
    .locals 0

    .line 132
    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setRingerMode(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/volume/VolumeDialogImpl;I)Landroid/widget/ImageView;
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getDrawerIconViewForMode(I)Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/volume/VolumeDialogImpl;)Z
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/volume/VolumeDialogImpl;I)F
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideRingerDrawer()V

    return-void
.end method

.method private addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1322
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_normal:I

    goto :goto_0

    .line 1318
    :cond_0
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_vibrate:I

    goto :goto_0

    .line 1315
    :cond_1
    sget p2, Lcom/android/systemui/R$string;->volume_ringer_status_silent:I

    .line 1325
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1326
    new-instance p2, Lcom/android/systemui/volume/VolumeDialogImpl$3;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private addExistingRows()V
    .locals 10

    .line 530
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 532
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 533
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v8

    .line 534
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v9

    move-object v3, p0

    move-object v4, v2

    .line 533
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 535
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 536
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 517
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    return-void
.end method

.method private addRow(IIIZZZ)V
    .locals 8

    .line 522
    sget-boolean p6, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p6, :cond_0

    sget-object p6, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding row for stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    new-instance p6, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {p6, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    move-object v1, p0

    move-object v2, p6

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 524
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 525
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 526
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkODICaptionsTooltip(Z)V
    .locals 2

    .line 960
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 961
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 963
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 964
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltip()V

    :cond_1
    :goto_0
    return-void
.end method

.method private computeTimeoutH()I
    .locals 4

    .line 1144
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 1145
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    const/16 v0, 0x3e80

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    const/4 v2, 0x6

    const/16 v3, 0x1388

    if-eqz v0, :cond_1

    .line 1149
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1154
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1155
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0

    .line 1160
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method private enableRingerViewsH(Z)V
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1352
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1354
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenIcon:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1355
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private enableVolumeRowViewsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V
    .locals 0

    xor-int/lit8 p0, p2, 0x1

    .line 1342
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 2

    .line 555
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 556
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 542
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    return-object v1

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 547
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    return-object v1

    .line 551
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    return-object p0
.end method

.method private getAlphaAttr(I)I
    .locals 2

    .line 488
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 489
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 490
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getDrawerIconViewForMode(I)Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 759
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 761
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMuteIcon:Landroid/widget/ImageView;

    return-object p0

    .line 763
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormalIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 2

    .line 571
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    .line 572
    div-int/lit8 v0, p0, 0x64

    add-int/lit8 v1, v0, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    int-to-float p0, v1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/lit8 v0, p0, 0x1

    :goto_0
    return v0
.end method

.method private getRingerDrawerOpenExtraHeight()I
    .locals 1

    .line 1727
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    mul-int/2addr v0, p0

    return v0
.end method

.method private getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;
    .locals 1

    .line 1706
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda20;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/widget/ImageButton;)V

    return-object v0
.end method

.method private getSingleUnpressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;
    .locals 0

    .line 1715
    new-instance p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;-><init>(Landroid/widget/ImageButton;)V

    return-object p0
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1694
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 1698
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1700
    :catch_0
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find translation for stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getTranslationInDrawerForRingerMode(I)F
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 773
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    neg-int p0, p0

    mul-int/lit8 p0, p0, 0x2

    :goto_0
    int-to-float p0, p0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 775
    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    neg-int p0, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private hideCaptionsTooltip()V
    .locals 3

    .line 1000
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1003
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1004
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 1005
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogHideAnimationDurationMs:I

    int-to-long v1, v1

    .line 1006
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1007
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1008
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private hideRingerDrawer()V
    .locals 6

    .line 859
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getDrawerIconViewForMode(I)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 868
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    .line 869
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x0

    .line 870
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 871
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 873
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 875
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 876
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 879
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 880
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 883
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 884
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 885
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 887
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 888
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 889
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 890
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    .line 892
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    return-void
.end method

.method private incrementManualToggleCount()V
    .locals 2

    .line 1050
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "manual_ringer_toggle_count"

    const/4 v1, 0x0

    .line 1051
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1052
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private initDialog()V
    .locals 13

    .line 330
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 332
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 334
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 335
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    .line 336
    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 337
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10002

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10c0028

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x1030004

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x3

    .line 349
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 350
    const-class v1, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    .line 351
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 352
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$integer;->volume_dialog_gravity:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 353
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$layout;->volume_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_dialog:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_dialog_rows:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 394
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mUseBackgroundBlur:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->ringer:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 422
    sget v1, Lcom/android/systemui/R$id;->ringer_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 423
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->dnd_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mZenIcon:Landroid/widget/FrameLayout;

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_new_ringer_active_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    .line 427
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_new_ringer_active_icon_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    .line 430
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_drawer_mute:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMute:Landroid/view/ViewGroup;

    .line 431
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_drawer_normal:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormal:Landroid/view/ViewGroup;

    .line 432
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_drawer_vibrate:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrate:Landroid/view/ViewGroup;

    .line 433
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_drawer_mute_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMuteIcon:Landroid/widget/ImageView;

    .line 434
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_drawer_vibrate_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

    .line 435
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_drawer_normal_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormalIcon:Landroid/widget/ImageView;

    .line 436
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_drawer_selection_background:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    .line 438
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->setupRingerDrawer()V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->odi_captions:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 442
    sget v1, Lcom/android/systemui/R$id;->odi_captions_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/CaptionsToggleImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->odi_captions_tooltip_stub:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 445
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 446
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    .line 451
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->settings:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    .line 453
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v2, 0xa

    .line 455
    sget v4, Lcom/android/systemui/R$drawable;->ic_volume_accessibility:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    :cond_4
    const/4 v8, 0x3

    .line 458
    sget v9, Lcom/android/systemui/R$drawable;->ic_volume_media:I

    sget v10, Lcom/android/systemui/R$drawable;->ic_volume_media_mute:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x2

    .line 461
    sget v3, Lcom/android/systemui/R$drawable;->ic_volume_ringer:I

    sget v4, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v8, 0x4

    .line 463
    sget v9, Lcom/android/systemui/R$drawable;->ic_alarm:I

    sget v10, Lcom/android/systemui/R$drawable;->ic_volume_alarm_mute:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v1, 0x0

    const v2, 0x1080514

    const v3, 0x1080514

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 465
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v7, 0x6

    .line 468
    sget v9, Lcom/android/systemui/R$drawable;->ic_volume_bt_sco:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move v8, v9

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v1, 0x1

    .line 470
    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_system:I

    sget v3, Lcom/android/systemui/R$drawable;->ic_volume_system_mute:I

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_0

    .line 474
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->addExistingRows()V

    .line 477
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initRingerH()V

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initODICaptionsH()V

    return-void
.end method

.method private initODICaptionsH()V
    .locals 3

    .line 949
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    if-eqz v0, :cond_0

    .line 950
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setOnConfirmedTapListener(Lcom/android/systemui/volume/CaptionsToggleImageButton$ConfirmedTapListener;Landroid/os/Handler;)V

    .line 956
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    return-void
.end method

.method private initRow(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;IIIZZ)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 581
    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 582
    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 583
    invoke-static {p1, p4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 584
    invoke-static {p1, p5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 585
    invoke-static {p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1202(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 586
    iget-object p4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {p4}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p4

    sget p5, Lcom/android/systemui/R$layout;->volume_dialog_row:I

    const/4 p6, 0x0

    invoke-virtual {p4, p5, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 587
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p4

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/view/View;->setId(I)V

    .line 588
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 589
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p4

    sget p5, Lcom/android/systemui/R$id;->volume_row_header:I

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    invoke-static {p1, p4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 590
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object p4

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p5

    mul-int/lit8 p5, p5, 0x14

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setId(I)V

    const/16 p4, 0xa

    if-ne p2, p4, :cond_0

    .line 592
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object p5

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 594
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p5

    sget v0, Lcom/android/systemui/R$id;->dnd_icon:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/FrameLayout;

    invoke-static {p1, p5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 595
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p5

    sget v0, Lcom/android/systemui/R$id;->volume_row_slider:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/SeekBar;

    invoke-static {p1, p5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 596
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p5

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {v0, p0, p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V

    invoke-virtual {p5, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 597
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p5

    sget v0, Lcom/android/systemui/R$id;->volume_number:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    invoke-static {p1, p5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 599
    invoke-static {p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 601
    iget-object p5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->volume_dialog_ringer_and_rows_container:I

    invoke-virtual {p5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndRowsContainer:Landroid/view/View;

    if-eqz p5, :cond_1

    .line 607
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {p5, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 618
    :cond_1
    iget-object p5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->volume_row_seekbar:I

    .line 619
    invoke-virtual {p5, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    check-cast p5, Landroid/graphics/drawable/LayerDrawable;

    const v0, 0x102000d

    .line 622
    invoke-virtual {p5, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/RoundedCornerProgressDrawable;

    .line 623
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 625
    sget v1, Lcom/android/systemui/R$id;->volume_seekbar_progress_solid:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 627
    sget v1, Lcom/android/systemui/R$id;->volume_seekbar_progress_icon:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 629
    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    .line 630
    invoke-virtual {v0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p6

    check-cast p6, Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    .line 629
    :cond_2
    invoke-static {p1, p6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/util/AlphaTintDrawableWrapper;)Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    .line 632
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p6

    invoke-virtual {p6, p5}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p5

    sget p6, Lcom/android/systemui/R$id;->volume_row_icon:I

    invoke-virtual {p5, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageButton;

    invoke-static {p1, p5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 636
    iget-object p5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p5

    invoke-virtual {p1, p3, p5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->setIcon(ILandroid/content/res/Resources$Theme;)V

    .line 638
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 639
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p3

    if-eq p3, p4, :cond_3

    .line 640
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda8;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 668
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private isLandscape()Z
    .locals 1

    .line 495
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStreamMuted(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Z
    .locals 0

    .line 1545
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eqz p0, :cond_1

    :cond_0
    iget-boolean p0, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$dismissH$19()V
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1189
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->tryToRemoveCaptionsTooltip()V

    const/4 v0, 0x0

    .line 1190
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 1192
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideRingerDrawer()V

    return-void
.end method

.method private synthetic lambda$dismissH$20()V
    .locals 4

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$getSinglePressFor$21(Landroid/widget/ImageButton;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1708
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 1709
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSingleUnpressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/ImageButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getSingleUnpressFor$22(Landroid/widget/ImageButton;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1717
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideCaptionsTooltip$17()V
    .locals 1

    .line 1007
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$hideRingerDrawer$11()V
    .locals 1

    .line 871
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initDialog$1()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "TouchedRingerToggle"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x5dc

    .line 372
    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ImageButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initDialog$2(Landroid/content/DialogInterface;)V
    .locals 2

    .line 361
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 364
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 365
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 366
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogShowAnimationDurationMs:I

    int-to-long v0, v0

    .line 367
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;-><init>()V

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 369
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 377
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$initDialog$3(Landroid/content/DialogInterface;)V
    .locals 0

    .line 381
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 382
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 383
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method private synthetic lambda$initDialog$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 386
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p2

    .line 387
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHovering:Z

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return p2
.end method

.method private synthetic lambda$initODICaptionsH$14()V
    .locals 1

    .line 951
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->onCaptionIconClicked()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const/16 v0, 0x15

    .line 952
    invoke-static {v0, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$initRingerH$13(Landroid/view/View;)V
    .locals 5

    .line 918
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v0, "TouchedRingerToggle"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 919
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez p1, :cond_0

    return-void

    .line 926
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v2

    .line 927
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_3

    :cond_2
    move v1, v4

    goto :goto_0

    .line 937
    :cond_3
    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez p1, :cond_4

    .line 938
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :cond_4
    move v1, v0

    .line 942
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setRingerMode(I)V

    return-void
.end method

.method private synthetic lambda$initRow$5()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndRowsContainer:Landroid/view/View;

    .line 609
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 612
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndRowsContainerBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 613
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->setRingerAndRowsBackgroundTop(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initRow$6(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ILandroid/view/View;)V
    .locals 4

    const/4 p3, 0x2

    new-array v0, p3, [Ljava/lang/Object;

    .line 641
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 642
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 643
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    if-ne v0, p3, :cond_4

    .line 644
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v1, p3, :cond_3

    if-eqz v0, :cond_0

    .line 647
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, v3, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_2

    .line 649
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 650
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v3, :cond_2

    .line 651
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    .line 650
    :cond_2
    invoke-interface {p0, p2, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_2

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, p3, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 656
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez p3, :cond_7

    .line 657
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_2

    .line 661
    :cond_4
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-ne p3, v0, :cond_5

    move v2, v3

    .line 662
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    if-eqz v2, :cond_6

    .line 663
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p3

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 662
    :goto_1
    invoke-interface {p0, p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :cond_7
    :goto_2
    const-wide/16 p2, 0x0

    .line 665
    invoke-static {p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$3102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J

    return-void
.end method

.method private synthetic lambda$initSettingsH$12(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x8

    .line 904
    invoke-static {v0, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 905
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.panel.action.VOLUME"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 906
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 907
    const-class p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->dismiss()V

    .line 908
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private synthetic lambda$new$0(IILjava/lang/Boolean;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsViewBackground:Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 265
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 264
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setColor(I)V

    .line 266
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setupRingerDrawer$7(Landroid/view/View;)V
    .locals 0

    .line 713
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    if-eqz p1, :cond_0

    .line 714
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideRingerDrawer()V

    goto :goto_0

    .line 716
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showRingerDrawer()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setupRingerDrawer$8(IILandroid/animation/ValueAnimator;)V
    .locals 3

    .line 735
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 736
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    .line 737
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 736
    invoke-virtual {v0, p3, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 738
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    .line 739
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 738
    invoke-virtual {v1, p3, p2, p1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 741
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconAnimatingDeselected:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 742
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconAnimatingSelected:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private synthetic lambda$setupRingerDrawer$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 754
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setRingerAndRowsBackgroundTop(F)V

    return-void
.end method

.method private synthetic lambda$showCaptionsTooltip$15(Landroid/view/View;)V
    .locals 0

    .line 973
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideCaptionsTooltip()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const/16 p1, 0x16

    .line 974
    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showCaptionsTooltip$16()V
    .locals 3

    .line 986
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "tool:checkODICaptionsTooltip() putBoolean true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "HasSeenODICaptionsTooltip"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 989
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 990
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    if-eqz v0, :cond_1

    .line 992
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showRingerDrawer$10()V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getDrawerIconViewForMode(I)Landroid/widget/ImageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updateCaptionsIcon$18(Z)V
    .locals 0

    .line 1039
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setOptedOut(Z)V

    return-void
.end method

.method private maybeShowToastH(I)V
    .locals 11

    .line 1074
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "RingerGuidanceCount"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xc

    if-le v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    .line 1095
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x1040894

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1082
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-eqz p1, :cond_3

    .line 1084
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->volume_dialog_ringer_guidance_ring:I

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    int-to-long v7, v7

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    int-to-long v9, p1

    .line 1086
    invoke-static {v7, v8, v9, v10}, Lcom/android/settingslib/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    .line 1084
    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1090
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x1040893

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1099
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    add-int/2addr v0, v4

    .line 1101
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private onCaptionIconClicked()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    move-result v0

    .line 1045
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setCaptionsEnabled(Z)V

    .line 1046
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateCaptionsIcon()V

    return-void
.end method

.method private provideTouchFeedbackH(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 1066
    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    goto :goto_0

    .line 1059
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->scheduleTouchFeedback()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1062
    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 1069
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_2
    return-void
.end method

.method private recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 3

    if-nez p1, :cond_1

    .line 1647
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v0, "recheckH ALL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 1649
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1650
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    .line 1653
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recheckH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    :cond_3
    return-void
.end method

.method private setRingerAndRowsBackgroundTop(F)V
    .locals 2

    .line 1735
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndRowsContainerBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 1739
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1740
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 1741
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerAndRowsContainerBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setRingerMode(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 674
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x12

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 675
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->incrementManualToggleCount()V

    .line 676
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    .line 677
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->provideTouchFeedbackH(I)V

    .line 678
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0, p1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 679
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->maybeShowToastH(I)V

    return-void
.end method

.method private setStreamImportantH(IZ)V
    .locals 2

    .line 1659
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1660
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1661
    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    :cond_1
    return-void
.end method

.method private setupRingerDrawer()V
    .locals 6

    .line 683
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_drawer_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 689
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowVibrate:Z

    if-nez v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrate:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 695
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 697
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 698
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 699
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 700
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 696
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 703
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getRingerDrawerOpenExtraHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 704
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 705
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 706
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    .line 702
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 709
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->volume_drawer_options:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 710
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 712
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrate:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMute:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormal:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$RingerDrawerItemClickListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v0

    .line 728
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x10104e2

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .line 733
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 744
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 751
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerIconColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 753
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 5

    .line 1212
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v3

    .line 1218
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowActiveStreamOnly:Z

    if-nez v0, :cond_5

    .line 1219
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1220
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    return p0

    .line 1225
    :cond_2
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1226
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    iget v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    if-ne v0, v4, :cond_3

    return v3

    .line 1230
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1231
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    .line 1232
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    .line 1233
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 1234
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p1

    if-eq p1, v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 1235
    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2
.end method

.method private showActiveStreamOnly()Z
    .locals 2

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1208
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.television"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private showH(I)V
    .locals 4

    .line 1113
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1115
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1116
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1118
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1119
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 1121
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    .line 1124
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initSettingsH()V

    .line 1125
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 1126
    iput-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-array v0, v2, [Ljava/lang/Object;

    .line 1128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 1129
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 1130
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsComponentState(Z)V

    .line 1131
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    return-void
.end method

.method private showRingerDrawer()V
    .locals 9

    .line 783
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerVibrateIcon:Landroid/widget/ImageView;

    .line 784
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 783
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerMuteIcon:Landroid/widget/ImageView;

    .line 786
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 785
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNormalIcon:Landroid/widget/ImageView;

    .line 788
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 787
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 795
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_3

    .line 796
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 797
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    move-result v2

    .line 796
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_3

    .line 799
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerNewSelectionBg:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 800
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    move-result v2

    .line 799
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 805
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_4

    .line 806
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    sub-int/2addr v5, v4

    mul-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_4

    .line 808
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerItemSize:I

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerCount:I

    sub-int/2addr v5, v4

    mul-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 810
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 811
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 813
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v0, v4, :cond_5

    const/16 v0, 0xaf

    goto :goto_5

    :cond_5
    const/16 v0, 0xfa

    .line 818
    :goto_5
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerDrawerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 819
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v5, v0

    .line 822
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 823
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v2, v4, :cond_6

    const-wide/16 v7, 0x4b

    goto :goto_6

    :cond_6
    const-wide/16 v7, 0x0

    :goto_6
    invoke-virtual {v0, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 826
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 827
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 828
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 832
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 833
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 834
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 835
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 838
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 839
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 840
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAnimateUpBackgroundToMatchDrawer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 842
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_7

    .line 843
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 844
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 845
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_7

    .line 847
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 848
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->getTranslationInDrawerForRingerMode(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 852
    :goto_7
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    return-void
.end method

.method private showSafetyWarningH(I)V
    .locals 3

    and-int/lit16 p1, p1, 0x401

    if-nez p1, :cond_0

    .line 1668
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_2

    .line 1670
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1671
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_1

    .line 1672
    monitor-exit p1

    return-void

    .line 1674
    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$4;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 1683
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1684
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 1685
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1687
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return-void

    :catchall_0
    move-exception p0

    .line 1684
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private trimObsoleteH()V
    .locals 4

    .line 1360
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "trimObsoleteH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 1362
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1363
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 1364
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1365
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1366
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1367
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/ConfigurableTexts;->remove(Landroid/widget/TextView;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateCaptionsIcon()V
    .locals 3

    .line 1032
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->areCaptionsEnabled()Z

    move-result v0

    .line 1033
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->getCaptionsEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v2, v0}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->setCaptionsEnabled(Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->isCaptionStreamOptedOut()Z

    move-result v0

    .line 1038
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsIcon:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-virtual {v1}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->getOptedOut()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1039
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    new-instance v2, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private updateODICaptionsH(ZZ)V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1022
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 1027
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateCaptionsIcon()V

    if-eqz p2, :cond_3

    .line 1028
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showCaptionsTooltip()V

    :cond_3
    return-void
.end method

.method private updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 5

    .line 1243
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "updateRowsH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    .line 1245
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->trimObsoleteH()V

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    if-ne v1, p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 1250
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->shouldBeVisibleH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result v3

    .line 1251
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1252
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1253
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1414
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVolumeRowH s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-nez v2, :cond_1

    return-void

    .line 1416
    :cond_1
    iget-object v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v2, :cond_2

    return-void

    .line 1418
    :cond_2
    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 1419
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-lez v3, :cond_3

    .line 1420
    invoke-static {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1422
    :cond_3
    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v3, -0x1

    .line 1423
    invoke-static {v1, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1425
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_5

    move v3, v6

    goto :goto_0

    :cond_5
    move v3, v5

    .line 1426
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_6

    move v4, v6

    goto :goto_1

    :cond_6
    move v4, v5

    .line 1427
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v8

    if-ne v8, v6, :cond_7

    move v8, v6

    goto :goto_2

    :cond_7
    move v8, v5

    .line 1428
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    move v9, v6

    goto :goto_3

    :cond_8
    move v9, v5

    .line 1429
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    move v10, v6

    goto :goto_4

    :cond_9
    move v10, v5

    :goto_4
    if-eqz v4, :cond_a

    .line 1430
    iget-object v12, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v12, v12, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v12, v6, :cond_a

    move v12, v6

    goto :goto_5

    :cond_a
    move v12, v5

    :goto_5
    if-eqz v4, :cond_b

    .line 1432
    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v13, v13, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v13, :cond_b

    move v13, v6

    goto :goto_6

    :cond_b
    move v13, v5

    .line 1434
    :goto_6
    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v15, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    if-ne v15, v6, :cond_c

    move/from16 v16, v6

    goto :goto_7

    :cond_c
    move/from16 v16, v5

    :goto_7
    if-ne v15, v11, :cond_d

    move/from16 v17, v6

    goto :goto_8

    :cond_d
    move/from16 v17, v5

    :goto_8
    if-ne v15, v7, :cond_e

    move v15, v6

    goto :goto_9

    :cond_e
    move v15, v5

    :goto_9
    if-eqz v17, :cond_10

    if-nez v4, :cond_f

    if-eqz v8, :cond_15

    :cond_f
    :goto_a
    move v8, v6

    goto :goto_b

    :cond_10
    if-eqz v15, :cond_11

    if-nez v4, :cond_f

    if-nez v8, :cond_f

    if-nez v9, :cond_f

    if-eqz v10, :cond_15

    goto :goto_a

    :cond_11
    if-eqz v16, :cond_15

    if-eqz v9, :cond_12

    .line 1439
    iget-boolean v9, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    if-nez v9, :cond_f

    :cond_12
    if-eqz v10, :cond_13

    iget-boolean v9, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    if-nez v9, :cond_f

    :cond_13
    if-eqz v4, :cond_14

    iget-boolean v9, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-nez v9, :cond_f

    :cond_14
    if-eqz v8, :cond_15

    iget-boolean v8, v14, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    if-eqz v8, :cond_15

    goto :goto_a

    :cond_15
    move v8, v5

    .line 1446
    :goto_b
    iget v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    mul-int/lit8 v9, v9, 0x64

    .line 1447
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    if-eq v9, v10, :cond_16

    .line 1448
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1451
    :cond_16
    iget v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 v9, v9, 0x64

    .line 1452
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMin()I

    move-result v10

    if-eq v9, v10, :cond_17

    .line 1453
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/SeekBar;->setMin(I)V

    .line 1457
    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v9

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/settingslib/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 1458
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1459
    iget-object v9, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v10

    iget v14, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    invoke-virtual {v9, v10, v14}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    .line 1462
    iget-boolean v9, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-nez v9, :cond_18

    iget-boolean v9, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muteSupported:Z

    if-eqz v9, :cond_19

    :cond_18
    if-nez v8, :cond_19

    move v9, v6

    goto :goto_c

    :cond_19
    move v9, v5

    :goto_c
    if-eqz v12, :cond_1a

    .line 1465
    sget v10, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    goto :goto_e

    :cond_1a
    if-nez v13, :cond_21

    if-eqz v8, :cond_1b

    goto :goto_d

    .line 1468
    :cond_1b
    iget-boolean v10, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v10, :cond_1d

    .line 1469
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->isStreamMuted(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Z

    move-result v10

    if-eqz v10, :cond_1c

    sget v10, Lcom/android/systemui/R$drawable;->ic_volume_media_bt_mute:I

    goto :goto_e

    .line 1470
    :cond_1c
    sget v10, Lcom/android/systemui/R$drawable;->ic_volume_media_bt:I

    goto :goto_e

    .line 1471
    :cond_1d
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->isStreamMuted(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1472
    iget-boolean v10, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v10, :cond_1e

    sget v10, Lcom/android/systemui/R$drawable;->ic_volume_media_off:I

    goto :goto_e

    :cond_1e
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v10

    goto :goto_e

    .line 1474
    :cond_1f
    iget-boolean v10, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowLowMediaVolumeIcon:Z

    if-eqz v10, :cond_20

    iget v10, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    mul-int/2addr v10, v7

    iget v13, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    iget v14, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    add-int/2addr v13, v14

    if-ge v10, v13, :cond_20

    .line 1475
    sget v10, Lcom/android/systemui/R$drawable;->ic_volume_media_low:I

    goto :goto_e

    :cond_20
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v10

    goto :goto_e

    .line 1467
    :cond_21
    :goto_d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v10

    .line 1478
    :goto_e
    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    invoke-virtual {v1, v10, v13}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->setIcon(ILandroid/content/res/Resources$Theme;)V

    .line 1480
    sget v13, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    if-ne v10, v13, :cond_22

    move v7, v11

    goto :goto_10

    .line 1481
    :cond_22
    sget v11, Lcom/android/systemui/R$drawable;->ic_volume_media_bt_mute:I

    if-eq v10, v11, :cond_26

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v11

    if-ne v10, v11, :cond_23

    goto :goto_10

    .line 1483
    :cond_23
    sget v7, Lcom/android/systemui/R$drawable;->ic_volume_media_bt:I

    if-eq v10, v7, :cond_25

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v7

    if-eq v10, v7, :cond_25

    sget v7, Lcom/android/systemui/R$drawable;->ic_volume_media_low:I

    if-ne v10, v7, :cond_24

    goto :goto_f

    :cond_24
    move v7, v5

    goto :goto_10

    :cond_25
    :goto_f
    move v7, v6

    .line 1479
    :cond_26
    :goto_10
    invoke-static {v1, v7}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1488
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    if-eqz v7, :cond_31

    if-eqz v9, :cond_30

    if-eqz v4, :cond_2b

    if-eqz v12, :cond_27

    .line 1492
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/systemui/R$string;->volume_stream_content_description_unmute:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 1494
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v5

    .line 1492
    invoke-virtual {v7, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 1496
    :cond_27
    iget-object v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1497
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1498
    iget-boolean v9, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v9, :cond_28

    .line 1499
    sget v9, Lcom/android/systemui/R$string;->volume_stream_content_description_vibrate_a11y:I

    goto :goto_11

    .line 1500
    :cond_28
    sget v9, Lcom/android/systemui/R$string;->volume_stream_content_description_vibrate:I

    :goto_11
    new-array v6, v6, [Ljava/lang/Object;

    .line 1501
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v5

    .line 1497
    invoke-virtual {v7, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_15

    .line 1503
    :cond_29
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1504
    iget-boolean v9, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v9, :cond_2a

    .line 1505
    sget v9, Lcom/android/systemui/R$string;->volume_stream_content_description_mute_a11y:I

    goto :goto_12

    .line 1506
    :cond_2a
    sget v9, Lcom/android/systemui/R$string;->volume_stream_content_description_mute:I

    :goto_12
    new-array v6, v6, [Ljava/lang/Object;

    .line 1507
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v5

    .line 1503
    invoke-virtual {v7, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_2b
    if-eqz v3, :cond_2c

    .line 1511
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1513
    :cond_2c
    iget-boolean v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-nez v3, :cond_2f

    iget-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v3, :cond_2d

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_2d

    goto :goto_14

    .line 1518
    :cond_2d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1519
    iget-boolean v9, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v9, :cond_2e

    .line 1520
    sget v9, Lcom/android/systemui/R$string;->volume_stream_content_description_mute_a11y:I

    goto :goto_13

    .line 1521
    :cond_2e
    sget v9, Lcom/android/systemui/R$string;->volume_stream_content_description_mute:I

    :goto_13
    new-array v6, v6, [Ljava/lang/Object;

    .line 1522
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v5

    .line 1518
    invoke-virtual {v7, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1514
    :cond_2f
    :goto_14
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v7, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/systemui/R$string;->volume_stream_content_description_unmute:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 1516
    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v5

    .line 1514
    invoke-virtual {v7, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1526
    :cond_30
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_31
    :goto_15
    if-eqz v8, :cond_32

    .line 1532
    invoke-static {v1, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    :cond_32
    xor-int/lit8 v2, v8, 0x1

    .line 1534
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->enableVolumeRowViewsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    xor-int/lit8 v2, v8, 0x1

    .line 1538
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v3, :cond_33

    if-nez v4, :cond_33

    if-nez v8, :cond_33

    goto :goto_16

    .line 1539
    :cond_33
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget v5, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 1540
    :goto_16
    invoke-direct {v0, v1, v2, v5}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V

    .line 1541
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_34
    return-void
.end method

.method private updateVolumeRowSliderH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ZI)V
    .locals 9

    .line 1594
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1595
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p2

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V

    .line 1596
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 1599
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    .line 1600
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    .line 1601
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1602
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    .line 1604
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v8, 0x3

    invoke-virtual {v5, v8, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1605
    iget-boolean v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 1606
    sget-boolean p2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p2, :cond_4

    sget-object p2, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string p3, "inGracePeriod"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-virtual {p0, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1608
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 1607
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_5
    if-ne p3, v0, :cond_6

    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    return-void

    :cond_6
    mul-int/lit8 p3, p3, 0x64

    if-eq p2, p3, :cond_b

    if-eqz v5, :cond_9

    if-eqz v3, :cond_9

    .line 1620
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1621
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$3200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result p0

    if-ne p0, p3, :cond_7

    return-void

    .line 1625
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_8

    .line 1626
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    new-array v0, v0, [I

    aput p2, v0, v1

    aput p3, v0, v2

    const-string p2, "progress"

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1627
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    .line 1629
    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1630
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-array v0, v0, [I

    aput p2, v0, v1

    aput p3, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 1632
    :goto_3
    invoke-static {p1, p3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$3202(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1633
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p2, 0x50

    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1634
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_4

    .line 1637
    :cond_9
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1638
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1640
    :cond_a
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p3, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_b
    :goto_4
    return-void
.end method

.method private updateVolumeRowTintH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1550
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1552
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    .line 1553
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mChangeVolumeRowTintWhenInactive:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 1557
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1

    .line 1558
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v1, 0x1120025

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_1
    if-eqz p2, :cond_4

    .line 1560
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    goto :goto_2

    :cond_4
    const p2, 0x1010553

    .line 1561
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->getAlphaAttr(I)I

    move-result p2

    .line 1563
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x10104e2

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1566
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x1010039

    invoke-static {p0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 1569
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1570
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1571
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/InsetDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1574
    :cond_5
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1575
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$3000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1578
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1579
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/InsetDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1582
    :cond_7
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1583
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1584
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    .line 1587
    :cond_8
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1588
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1589
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;

    move-result-object p0

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_9
    return-void
.end method


# virtual methods
.method composeWindowTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->volume_dialog_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 297
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected dismissH(I)V
    .locals 5

    .line 1165
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    .line 1166
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialog.dismiss() reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1170
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1171
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    if-eqz v0, :cond_1

    return-void

    .line 1174
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsAnimatingDismiss:Z

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1176
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1177
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    new-array v0, v1, [Ljava/lang/Object;

    .line 1179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 1181
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1182
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1183
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1184
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogHideAnimationDurationMs:I

    int-to-long v3, v0

    .line 1185
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 1186
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 1187
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1194
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1195
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1196
    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->checkODICaptionsTooltip(Z)V

    .line 1197
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->notifyVisible(Z)V

    .line 1198
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1199
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    if-eqz v0, :cond_5

    .line 1200
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "SafetyWarning dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1203
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 1

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V

    .line 285
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAccessibility:Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {p1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->init()V

    .line 287
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 288
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/VolumeDialogController;->getState()V

    .line 290
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public initRingerH()V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 916
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAccessibilityLiveRegion(I)V

    .line 917
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    return-void
.end method

.method public initSettingsH()V
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 898
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 899
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 897
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 903
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 10

    const/4 v0, 0x3

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    const/4 v0, 0x0

    move v1, v0

    .line 314
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 317
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 318
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    aget v5, v3, v0

    const/4 v6, 0x1

    aget v7, v3, v6

    aget v8, v3, v0

    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v3, v3, v6

    .line 322
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v3

    sget-object v9, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v6, v7

    move v7, v8

    move v8, v2

    .line 318
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method protected onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 10

    .line 1373
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChangedH() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-eq v0, v2, :cond_1

    if-ne v2, v1, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    .line 1381
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    .line 1384
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1385
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1386
    iget-object v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 1387
    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_2

    goto :goto_1

    .line 1388
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1389
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogImpl;->findRow(I)Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1390
    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_remote:I

    sget v6, Lcom/android/systemui/R$drawable;->ic_volume_remote_mute:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/VolumeDialogImpl;->addRow(IIIZZZ)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1395
    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    if-eq v0, p1, :cond_5

    .line 1396
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mPrevActiveStream:I

    .line 1397
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActiveStream:I

    .line 1398
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    move-result-object p1

    .line 1399
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 1400
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1402
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1403
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateVolumeRowH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_2

    .line 1405
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRingerH()V

    .line 1406
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->composeWindowTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onUiModeChanged()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 5

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1136
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 1137
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 1138
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    .line 1137
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1139
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/VolumeDialogController;->userActivity()V

    return-void
.end method

.method public setAutomute(Z)V
    .locals 1

    .line 504
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 505
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    .line 506
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSilentMode(Z)V
    .locals 1

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 511
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 512
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setStreamImportant(IZ)V
    .locals 1

    .line 500
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected showCaptionsTooltip()V
    .locals 3

    .line 970
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 972
    sget v1, Lcom/android/systemui/R$id;->dismiss:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 976
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 977
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 981
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 982
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 983
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogShowAnimationDurationMs:I

    int-to-long v1, v1

    .line 984
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 985
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 995
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected tryToRemoveCaptionsTooltip()V
    .locals 2

    .line 1013
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    sget v1, Lcom/android/systemui/R$id;->volume_dialog_container:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1015
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1016
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected updateRingerH()V
    .locals 7

    .line 1259
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    if-eqz v0, :cond_a

    .line 1260
    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v0, :cond_0

    return-void

    .line 1265
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v1, :cond_2

    if-ne v3, v6, :cond_1

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v6

    :goto_1
    xor-int/lit8 v3, v2, 0x1

    .line 1269
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->enableRingerViewsH(Z)V

    .line 1270
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-eqz v3, :cond_9

    if-eq v3, v6, :cond_8

    .line 1287
    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mAutomute:Z

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v0, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    if-nez v2, :cond_6

    if-eqz v5, :cond_6

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1290
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1291
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_unmute:I

    .line 1292
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1291
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1293
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1295
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1297
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1298
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_vibrate:I

    .line 1299
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1298
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_2

    .line 1301
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_ringer_hint_mute:I

    .line 1302
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1301
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1304
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1272
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1273
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1274
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->volume_ringer_hint_mute:I

    .line 1275
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1274
    invoke-direct {p0, v0, v6, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1276
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1279
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    sget v2, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1280
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSelectedRingerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1281
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->volume_ringer_hint_unmute:I

    .line 1283
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1282
    invoke-direct {p0, v0, v5, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method
